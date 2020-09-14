<%@include file='WEB-INF/includes/header.jsp' %>
    <div>
    <h1 class="left-align">Projeto Amortização</h1>
    <h3>Programação Orientada a Objetos - Fatec PG</h3>
  </div>
    <div class="card-panel teal lighten-4 center-align"><h5>Website de cálculo de amortização para obtenção de nota na matéria de Programação Orientada à Objeto - FATECPG</h5></div>
    <div class="section">
        <div class="row center">
            <div class="col s12 m4 14">
                  <div class="card">
                    <div class="card-image">
                      <img src="images/sample-1.jpg">
                      <span class="card-title">Tabela Price</span>
                    </div>
                    <div class="card-content">
                        <p>Prestações constantes, amortizações crescentes, juros decrescentes.<br>
                          <strong>Prestações constantes</strong>
                      </p>
                    </div>
                    <div class="card-action">
                      <a href="tabela-price.jsp">Faça uma silumação</a>
                    </div>
                  </div>
                </div>
       
                <div class="col s12 m4 14">
                  <div class="card">
                    <div class="card-image">
                      <img src="images/sample-1.jpg">
                      <span class="card-title">Amortização Americana</span>
                    </div>
                    <div class="card-content">
                        <p>Prestações constantes (exceto a última), zero amortização, juros constantes.<br>
                            <strong>O valor a ser quitado é inserido na última prestação</strong>
                        </p>
                    </div>
                    <div class="card-action">
                      <a href="amortizacao-americana.jsp">Faça uma silumação</a>
                    </div>
                  </div>
                </div>
            
            
            <div class="col s12 m4 14">
                  <div class="card">
                    <div class="card-image">
                      <img src="images/sample-1.jpg">
                      <span class="card-title">Amortização Constante</span>
                    </div>
                    <div class="card-content">
                        <p>
                            Prestações decrescentes, amortizações constantes, juros decrescentes.<br>
                            <strong> Primeira mais cara. Última mais barata.</strong>
                        </p>
                    </div>
                    <div class="card-action">
                      <a href="amortizacao-constante.jsp">Faça uma silumação</a>
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
                        <p>Responsavél por desenvolver a Amortização Americana.</p>
                    </div>
                </div>
            </div>
            <div class="col s12 m4 14">
                <div class="card z-depth-4">
                    <div class="card-image">
                        <img src="img/lu.jfif">
                    </div>
                    <div class="card-content">
                        <span class="card-title activator grey-text text-darken-4">Lúbia Oliveira</span>
                        <p>Responsavél por desenvolver a Tabela Price.</p>
                    </div>
                </div>
            </div>
            <div class="col s12 m4 14">
                <div class="card z-depth-4">
                    <div class="card-image">
                        <img src="img/mat.jpg">
                    </div>
                    <div class="card-content">
                        <span class="card-title activator grey-text text-darken-4">Matheus Gonçalves</span>
                        <p>Responsavél por desenvolver a Amortização Constante</p>
                    </div>
                </div>
            </div>
        </div>
    </div>

<%@include file='WEB-INF/includes/footer.jsp' %>