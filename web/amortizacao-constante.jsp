<%@page import="java.util.Objects"%>
<%@page import="java.text.DecimalFormat"%>
<%@page import="java.text.NumberFormat"%>
<%@page import="java.util.Locale"%>
<%@page import="utels.CalculosUteis"%>
<%@include file='WEB-INF/includes/header.jsp' %>        
        <%           
            Exception err = null;
            
            double[] total = {0,0,0};
            
            double taxa = 0.0,juros = 0.0, valorFinanciado = 0.0, 
                   saldoDevedor, parcela, amortizacao;
            
            int numParcela = 0;
            try{
                taxa = CalculosUteis.converteJuros(Double.parseDouble(request.getParameter("taxa")));
                valorFinanciado = Double.parseDouble(request.getParameter("valorFinanciado"));
                numParcela = Integer.parseInt(request.getParameter("numParcela"));
            }catch(Exception ex){
                err = ex;
            }
            
            Locale l = new Locale("pt","BR");
            NumberFormat nf = NumberFormat.getInstance(l);  
        %>

        <h1>Amortização Constante</h1>
        <form class="col s12">
            <div class="row">
            <div class="input-field col s3">
                <input placeholder="175000.00" id="valorF" name="valorFinanciado" type="text" class="validate">
                <label for="valorF">Valor Financiado</label>
            </div>
            <div class="input-field col s3">
                <input placeholder="5" id="meses" min='1' name="numParcela" type="number" class="validate">
                <label for="meses">Número de Meses</label>
            </div>
            <div class="input-field col s3">
                <input placeholder="1.5" id="taxa" name="taxa" type="text" class="validate">
                <label for="taxa">Taxa de Juros</label>
            </div>
            
            <div class="input-field col s3">
                <button type="submit"><a class="waves-effect waves-light btn"><i class="material-icons right">cloud</i>Simular</a></button>
            </div>
            </div>
        </form>
        <%if(!Objects.isNull(err)){  %>
            <p>Valores não informados</p>
        <%}else{ %>
            <table class="stripped">
            <thead>
              <tr>
                  <th>#</th>
                  <th>Parcelas</th>
                  <th>Amortizações</th>
                  <th>Juros</th>
                  <th>Saldo Devedor</th>
              </tr>
            </thead>

            <tbody>
              <tr>
                <td>0</td>
                <td>-</td>
                <td>-</td>
                <td>-</td>
                <td>R$ <%= nf.format(valorFinanciado)%></td>
              </tr>
                <%  
                    amortizacao = valorFinanciado / numParcela;
                    saldoDevedor = valorFinanciado - amortizacao;
                    for(int i = 0; i < numParcela; i++){
                    juros = taxa * (valorFinanciado - i * amortizacao);
                    
                    parcela = amortizacao + juros;

                %>
              <tr>
                <td><%= i+1%></td>
                <td>R$ <%= nf.format(parcela)%></td>
                <td>R$ <%= nf.format(amortizacao)%></td>
                <td>R$ <%= nf.format(juros)%></td>
                <td>R$ <%= nf.format(saldoDevedor)%></td>
              </tr>
            <% 
                    total[0] += parcela;
                    total[1] += amortizacao;
                    total[2] += juros;
                    
                    saldoDevedor = CalculosUteis.calculaSaldoDevedor(amortizacao, saldoDevedor);
                } 
            %>
            <tr>
            
                <td><strong>Total</strong></td>
                <%for(Double valor: total){ %>
                <td><strong>R$ <%= nf.format(valor)%></strong></td>
                <%}%>
            </tr>
            </tbody>
          </table>
        <%}%>
<%@include file='WEB-INF/includes/footer.jsp' %>
