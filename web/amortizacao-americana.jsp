<%@include file='WEB-INF/includes/header.jsp' %>
        <h2>Americana</h2>
        
        <form>
            Valor financiado: <input type="number" name="valorTotal" required> <br>
            Numero de meses: <input type="number" name="numParcelas" required ><br>
            Juros (%)<input type="number" name="juros" required>
            <input type="submit" value="Simular">
        </form>
        
        <%
            Exception requestEx = null;
            double valorTotal = 0.0;
            double numParcelas = 0.0;
            double juros = 0.0;
            try{
                valorTotal = Double.parseDouble(request.getParameter("valorTotal"));
                numParcelas = Double.parseDouble(request.getParameter("numParcelas"));
                juros = Double.parseDouble(request.getParameter("juros"));
            }catch(Exception ex){
                requestEx = ex; 
            }
        %>
        
        <% if (request.getParameter("valorTotal") == null){%>
        <p> Campo vazio. Digite um valor.</p>
        <%}
        else if(requestEx != null){ %>
        <p> Valor inválido. Digite apenas números.</p>
        <% }else{ %>
            <h1> <% out.print(valorTotal); %> </h1>
        <% } %>
<%@include file='WEB-INF/includes/footer.jsp' %>
