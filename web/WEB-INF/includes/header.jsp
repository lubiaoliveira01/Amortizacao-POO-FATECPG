<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>POO - Amortização</title>
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">
        <style>
        footer {
            /*deixa o texto no fim da página*/
            position: inherit;
            bottom: 0px;   
            width: 100%;
        }
        
        body {
            display: flex;
            min-height: 100vh;
            flex-direction: column;
        }

        main {
          flex: 1 0 auto;
        }
        #logo{

            padding-left: 25px;
        }
        #tagP{
            padding-right: 100px;
        }
  
    </style>
    </head>
    <body>
        <header>
            <nav class="grey darken-4">
                <div class="nav-wrapper">
                    <a id="logo" href="home.jsp" class="brand-logo">
                        <i class="large material-icons">account_balance</i>
                        Amortização
                    </a>
                    
                    <ul id="nav-mobile" class="right hide-on-med-and-down">
                        <li ><i id="tagP">#BlackLivesMatter</i></li>
                        <li><a href="tabela-price.jsp"><i class="large material-icons left">local_atm</i>Tabela Price</a></li>
                        <li><a href="amortizacao-americana.jsp"><i class="large material-icons left">account_balance_wallet</i>Amortização Americana</a></li>
                        <li><a href="amortizacao-constante.jsp"><i class="large material-icons left">credit_card</i>Amortização Constante</a></li>
                    </ul>
                </div>
            </nav>
        </header>
        <main>
        <div class="container col s12">