/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package utels;

/**
 *
 * @author lubia
 */
public class CalculosUteis {
    public static double converteJuros(double juros){
        return juros/100;
    }
    
    public static double calculaSaldoDevedor(double amortizacao, double saldoAnterior){
        return saldoAnterior - amortizacao;
    }
}

