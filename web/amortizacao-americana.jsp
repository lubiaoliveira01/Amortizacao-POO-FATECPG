<%@include file='WEB-INF/includes/header.jsp' %>
<%@page import="java.util.Objects" %>
<%@page import="utels.CalculosUteis" %>


        <h1>Amortização Americana</h1>
        <form class="col s12">
            <div class="row">
            <div class="input-field col s3">
                <input placeholder="175000.00" id="valorF" name="valorFinanciado" type="text" class="validate">
                <label for="valorF">Valor Financiado</label>
            </div>
            <div class="input-field col s3">
                <input placeholder="5" id="meses" name="numParcelas" type="number" min="1" class="validate">
                <label for="meses">Número de Meses</label>
            </div>
            <div class="input-field col s3">
                <input placeholder="1.5" id="taxa" name="juros" type="text" class="validate">
                <label for="taxa">Taxa de Juros (%)</label>
            </div>
            
            <div class="input-field col s3">
                <button type="submit"><a class="waves-effect waves-light btn"><i class="material-icons right">cloud</i>Simular</a></button>
            </div>
            </div>
        </form>
        
        <%
            Exception requestEx = null;
            double valorFinanciado = 0.0;
            int numParcelas = 0;
            double juros = 0.0;
            try{
                valorFinanciado = Double.parseDouble(request.getParameter("valorFinanciado"));
                numParcelas = Integer.parseInt(request.getParameter("numParcelas"));
                juros = CalculosUteis.converteJuros(Double.parseDouble(request.getParameter("juros")));
            }catch(Exception ex){
                requestEx = ex; 
            }
        %>
        
        <% if (request.getParameter("valorFinanciado") == null){%>
        <p> Valores não informados.</p>
        <%}
        else if(requestEx != null){ %>
        <p> Valor inválido.</p>
        <% }else{ %>
        <table>
            <thead>
            <th></th>
                <th>Prestação</th>
                <th>Amortização</th>
                <th>Juros</th>
                <th>Saldo Devedor</th>
            </thead>
            
            <tbody>
                <% 
                    double amortizacao = 0.0;
                    juros = valorFinanciado * juros;
                    double prestacao = juros + amortizacao;
                    double saldoDevedor = CalculosUteis.calculaSaldoDevedor(amortizacao, valorFinanciado);
                    for(int i = 1; i <= numParcelas; i++){
                    
                        if( i == numParcelas){
                            amortizacao = valorFinanciado;
                            prestacao = juros + amortizacao;
                            saldoDevedor = saldoDevedor - amortizacao;
                        }
                %>
                    <tr> 
                        <td> <%= i %> </td>
                        <td> R$ <%= prestacao %> </td>
                        <td> R$ <%= amortizacao %> </td>
                        <td> R$ <%= juros %> </td>
                        <td>R$ <%= saldoDevedor %> </td>
                    </tr>
                <% } %>
                <tr>
                    <td> <strong>Total:</strong> </td>
                    <td><strong> R$  <%= (juros * numParcelas) + valorFinanciado %></strong> </td>
                    <td><strong> R$ <%= amortizacao %></strong> </td>
                    <td><strong> R$ <%= juros %></strong> </td>
                    <td><strong>R$ 0</strong> </td>
                </tr>
            </tbody>     
        </table>
        <% } %>
<%@include file='WEB-INF/includes/footer.jsp' %>
