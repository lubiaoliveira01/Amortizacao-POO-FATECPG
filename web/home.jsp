<%@include file='WEB-INF/includes/header.jsp' %>
    <div>
    <h1 class="left-align">Projeto Amortiza��o</h1>
    <h3>Programa��o Orientada a Objetos - Fatec PG</h3>
  </div>
    <div class="card-panel teal lighten-4 center-align"><h5>Website de c�lculo de amortiza��o para obten��o de nota na mat�ria de Programa��o Orientada � Objeto - FATECPG</h5></div>
    <div class="section">
        <div class="row center">
            <div class="col s12 m4 14">
                  <div class="card">
                    <div class="card-image">
                      <img src="images/sample-1.jpg">
                      <span class="card-title">Tabela Price</span>
                    </div>
                    <div class="card-content">
                        <p>Presta��es constantes, amortiza��es crescentes, juros decrescentes.<br>
                          <strong>Presta��es constantes</strong>
                      </p>
                    </div>
                    <div class="card-action">
                      <a href="tabela-price.jsp">Fa�a uma siluma��o</a>
                    </div>
                  </div>
                </div>
       
                <div class="col s12 m4 14">
                  <div class="card">
                    <div class="card-image">
                      <img src="images/sample-1.jpg">
                      <span class="card-title">Amortiza��o Americana</span>
                    </div>
                    <div class="card-content">
                        <p>Presta��es constantes (exceto a �ltima), zero amortiza��o, juros constantes.<br>
                            <strong>O valor a ser quitado � inserido na �ltima presta��o</strong>
                        </p>
                    </div>
                    <div class="card-action">
                      <a href="amortizacao-americana.jsp">Fa�a uma siluma��o</a>
                    </div>
                  </div>
                </div>
            
            
            <div class="col s12 m4 14">
                  <div class="card">
                    <div class="card-image">
                      <img src="images/sample-1.jpg">
                      <span class="card-title">Amortiza��o Constante</span>
                    </div>
                    <div class="card-content">
                        <p>
                            Presta��es decrescentes, amortiza��es constantes, juros decrescentes.<br>
                            <strong> Primeira mais cara. �ltima mais barata.</strong>
                        </p>
                    </div>
                    <div class="card-action">
                      <a href="amortizacao-constante.jsp">Fa�a uma siluma��o</a>
                    </div>
                  </div>
                </div>
    
            <h3>Equipe</h3>
            <div class="col s12 m4 14">
                <div class="card z-depth-4">
                    <div class="card-image">
                        <img src="img/isa.jpg">
                    </div>
                    <div class="card-content">
                        <span class="card-title activator grey-text text-darken-4">Isabela Melim</span>
                        <p>Responsav�l por desenvolver a Amortiza��o Americana.</p>
                    </div>
                </div>
            </div>
            <div class="col s12 m4 14">
                <div class="card z-depth-4">
                    <div class="card-image">
                        <img src="img/lu.jfif">
                    </div>
                    <div class="card-content">
                        <span class="card-title activator grey-text text-darken-4">L�bia Oliveira</span>
                        <p>Responsav�l por desenvolver a Tabela Price.</p>
                    </div>
                </div>
            </div>
            <div class="col s12 m4 14">
                <div class="card z-depth-4">
                    <div class="card-image">
                        <img src="img/mat.jpg">
                    </div>
                    <div class="card-content">
                        <span class="card-title activator grey-text text-darken-4">Matheus Gon�alves</span>
                        <p>Responsav�l por desenvolver a Amortiza��o Constante</p>
                    </div>
                </div>
            </div>
        </div>
    </div>

<%@include file='WEB-INF/includes/footer.jsp' %>