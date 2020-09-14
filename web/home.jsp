<%@include file='WEB-INF/includes/header.jsp' %>
<div class="section">
    <div class="center-align">
        <h1>Amortizações</h1>
        <h4>Simule a quitação de sua dívida com a opção que mais se encaixa no seu perfil.</h4>
        <h5>Rápido, sem burocracia e sem compromisso.</h5>
    </div>
</div>
<div class="section">
    <div class="row center">
        <div class="col s12 m4 14">
            <div class="card">
                <div class="card-image">
                    <img src="img/fundo.jpg">
                    <span class="card-title">Tabela Price</span>
                </div>
                <div class="card-content">
                    <p>Nesse modelo de pagameto as prestações são constantes, as amortizações são crescentes 
                       e os juros decrescentes.<br>
                        <strong>Prestações constantes</strong>
                    </p>
                </div>
                <div class="card-action" >
                    <a href="tabela-price.jsp" >Faça uma silumação</a>
                </div>
            </div>
        </div>

        <div class="col s12 m4 14">
            <div class="card">
                <div class="card-image">
                    <img src="img/fundo.jpg">
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
                    <img src="img/fundo.jpg">
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
    </div>
</div>

<div class="section">
    <div class="row center">
        <h3>Equipe</h3>
        <div class="col s12 m4 14">
            <div class="card z-depth-4">
                <div class="card-image">
                    <img src="img/isa.jpg">
                </div>
                <div class="card-content">
                    <span class="card-title activator grey-text text-darken-4">Isabela Melim</span>
                    <p>Responsável por desenvolver a Amortização Americana.</p>
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
                    <p>Responsável por desenvolver a Tabela Price.</p>
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
                    <p>Responsável por desenvolver a Amortização Constante</p>
                </div>
            </div>
        </div>
    </div>
</div>

<%@include file='WEB-INF/includes/footer.jsp' %>