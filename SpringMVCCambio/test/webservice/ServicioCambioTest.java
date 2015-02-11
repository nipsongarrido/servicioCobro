

/**
 * ServicioCambioTest.java
 *
 * This file was auto-generated from WSDL
 * by the Apache Axis2 version: 1.6.2  Built on : Apr 17, 2012 (05:33:49 IST)
 */
    package webservice;

    /*
     *  ServicioCambioTest Junit test case
    */

    public class ServicioCambioTest extends junit.framework.TestCase{

     
        /**
         * Auto generated test method
         */
        public  void testguardarConsulta() throws java.lang.Exception{

        webservice.ServicioCambioStub stub =
                    new webservice.ServicioCambioStub();//the default implementation should point to the right endpoint

           webservice.ServicioCambioStub.GuardarConsulta guardarConsulta4=
                                                        (webservice.ServicioCambioStub.GuardarConsulta)getTestObject(webservice.ServicioCambioStub.GuardarConsulta.class);
                    // TODO : Fill in the guardarConsulta4 here
                
                        assertNotNull(stub.guardarConsulta(
                        guardarConsulta4));
                  



        }
        
         /**
         * Auto generated test method
         */
        public  void testStartguardarConsulta() throws java.lang.Exception{
            webservice.ServicioCambioStub stub = new webservice.ServicioCambioStub();
             webservice.ServicioCambioStub.GuardarConsulta guardarConsulta4=
                                                        (webservice.ServicioCambioStub.GuardarConsulta)getTestObject(webservice.ServicioCambioStub.GuardarConsulta.class);
                    // TODO : Fill in the guardarConsulta4 here
                

                stub.startguardarConsulta(
                         guardarConsulta4,
                    new tempCallbackN65548()
                );
              


        }

        private class tempCallbackN65548  extends webservice.ServicioCambioCallbackHandler{
            public tempCallbackN65548(){ super(null);}

            public void receiveResultguardarConsulta(
                         webservice.ServicioCambioStub.GuardarConsultaResponse result
                            ) {
                
            }

            public void receiveErrorguardarConsulta(java.lang.Exception e) {
                fail();
            }

        }
      
        //Create an ADBBean and provide it as the test object
        public org.apache.axis2.databinding.ADBBean getTestObject(java.lang.Class type) throws java.lang.Exception{
           return (org.apache.axis2.databinding.ADBBean) type.newInstance();
        }

        
        

    }
    