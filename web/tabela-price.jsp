<%@page import="java.util.Objects"%>
<%@page import="java.text.DecimalFormat"%>
<%@page import="java.text.NumberFormat"%>
<%@page import="java.util.Locale"%>
<%@page import="utels.CalculosUteis"%>

<%@include file='WEB-INF/includes/header.jsp' %>

    <%
        Exception reqException = null;
        
        int numMeses = 0;
        
        double[] total = {0,0,0};
        
        
        double valorFinanciado = 0.0, taxaJuros = 0.0,
               parcela, juros, saldoDev, amortizacao;
        
        
        try{
            numMeses = Integer.parseInt(request.getParameter("numMeses"));
            valorFinanciado = Double.parseDouble(request.getParameter("valorFinanciado"));
            taxaJuros = CalculosUteis.converteJuros(Double.parseDouble(request.getParameter("taxaJuros")));
        }catch(Exception ex){
            numMeses = 0;
            valorFinanciado = 0;
            taxaJuros = 0;
            reqException = ex;
        }
        
        Locale l = new Locale("pt","BR");
        NumberFormat nf = NumberFormat.getInstance(l);
    %>
    
    <div class="col s12">
        <h1>Tabela-Price</h1>
        <form class="col s12">
            <div class="row">
                <div class="input-field col s3">
                    <input placeholder="175000.00" id="valorFinanciado" name="valorFinanciado" type="text" class="validate">
                    <label for="valorF">Valor Financiado</label>
                </div>
                <div class="input-field col s3">
                    <input placeholder="5" id="numMeses" name="numMeses" type="number" class="validate">
                    <label for="meses">Número de meses</label>
                </div>
                <div class="input-field col s3">
                    <input placeholder="1.5" id="taxaJuros" name="taxaJuros" type="text" class="validate">
                    <label for="taxa">Taxa de Juros (%)</label>
                </div>
                <div class="input-field col s3">
                    <button type="submit"><a class="waves-effect waves-light btn"><i class="material-icons right">cloud</i>Simular</a></button>
                </div>
            </div>
        </form>
        <%if(Objects.isNull(request.getParameter("valorFinanciado"))||
             Objects.isNull(request.getParameter("numMeses"))||
             Objects.isNull(request.getParameter("taxaJuros"))){%>
                <p>Valores não informados.</p>
            <%}else if(!Objects.isNull(reqException)){%>
                <p>Valores inválidos</p>
            <%}else{%>
                <table class="stripped">
                    <thead>
                        <tr>
                            <td>#</td>
                            <td>PARCELAS</td>
                            <td>AMORTIZAÇÕES</td>
                            <td>JUROS</td>
                            <td>SALDO DEVEDOR</td>
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
                            parcela = valorFinanciado*(((Math.pow(1+taxaJuros,numMeses))*taxaJuros)/((Math.pow(1+taxaJuros,numMeses))-1));
                            saldoDev = valorFinanciado;
                            
                            for(int i =0; i<numMeses; i++){
                                juros = saldoDev*taxaJuros;
                                amortizacao = parcela - juros;
                                saldoDev = CalculosUteis.calculaSaldoDevedor(amortizacao, saldoDev);
                        %>
                        <tr>
                            <td>
                                <%= i+1%>
                            </td>
                            <td>
                                R$ <%= nf.format(parcela)%>
                            </td>
                            <td>
                                R$ <%= nf.format(amortizacao)%>
                            </td>
                            <td>
                                R$ <%= nf.format(juros)%>
                            </td>
                            <td>
                                R$ <%= nf.format(saldoDev)%>
                            </td>
                        </tr>
                        <%
                            total[0] += parcela;
                            total[1] += amortizacao;
                            total[2] += juros;
                            
                            
                            }
                        %>
                        <tr>
                            <td>
                                <strong>Total</strong>
                            </td>
                            <%
                                for(Double valor: total){ %>
                                <td>
                                    <strong>R$ <%= nf.format(valor)%></strong>
                                </td>
                            <%}%>
                        </tr>
                    </tbody>
                </table>   
            <%}%>    
        </div>  
<%@include file='WEB-INF/includes/footer.jsp' %>
