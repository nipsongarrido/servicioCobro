package spring3.controller;
 
//import net.viralpatel.spring3.form.Contact;
import java.rmi.RemoteException;

import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import spring3.form.Consulta;
import spring3.form.ListaObjetos;
import webservice.ServicioCambioStub;
import webservice.ServicioCambioStub.ConsultaVO;
import webservice.ServicioCambioStub.GuardarConsulta;
import webservice.ServicioCambioStub.GuardarConsultaResponse;
import webservice.ServicioCambioStub.TipoConsultaVO;
import webservice.ServicioCambioStub.UsuarioVO;
 
@Controller
@SessionAttributes
public class ContactController {
 
    @RequestMapping(value = "/addConsulta", method = RequestMethod.POST)
    public ModelAndView addContact(@ModelAttribute("consulta") @Valid  Consulta contact, BindingResult result) {
         //BindingResult result, 
    	 if(result.hasErrors()) {
    		 System.out.println("ERROR");
             return new ModelAndView("contact");
         }
       
        try {
        	
        	ServicioCambioStub oStub = new ServicioCambioStub();
    		// AGREGA
        	TipoConsultaVO oTipoConsulta = new TipoConsultaVO();
        	oTipoConsulta.setDescripcion("dolar-nacional");
        	
        	UsuarioVO oUsuarioVO = new UsuarioVO();
        	oUsuarioVO.setUsuario("nipson");
        	oUsuarioVO.setContrasena("asdasd");
        	
        	ConsultaVO oConsultaVO = new ConsultaVO();
        	oConsultaVO.setCantidadConsultada(100);
        	oConsultaVO.setCantidadCambiada(100*600);
        	oConsultaVO.setTipoConsulta(oTipoConsulta);
        	oConsultaVO.setUsuario(oUsuarioVO);
        	
        	GuardarConsulta oGuardarConsulta = new GuardarConsulta();
        	oGuardarConsulta.setConsulta(oConsultaVO);
        	
        	GuardarConsultaResponse objResponse = oStub.guardarConsulta(oGuardarConsulta);
        	
    		String mensaje = objResponse.get_return();

	        System.out.println(mensaje);
			return new ModelAndView("saludo", "message", mensaje);
		} catch (RemoteException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();

			return new ModelAndView("error", "message", "ERROR");
		}
         
        //return "redirect:contacts.html";
        
    }
     
    @RequestMapping("/contact")
    public ModelAndView contact() {
         
        return new ModelAndView("contact", "command", new Consulta());
    }
    /*
    @RequestMapping(value = "/show", method = RequestMethod.POST)
	public ModelAndView show(@ModelAttribute("contact") @Valid  Contact contact) {
    	   
    	 ListaObjetos contactForm = new ListaObjetos();
         
         try {
        	ContactoVO oContactoVO = new ContactoVO();
     		oContactoVO.setNombre(contact.getFirstname());
     		oContactoVO.setApellido(contact.getLastname());
     		oContactoVO.setMail(contact.getEmail());
     		oContactoVO.setTelefono(contact.getTelephone());
     		oContactoVO.setDireccion(contact.getAddress());
     		oContactoVO.setComuna(contact.getCity());
     		oContactoVO.setTwitter(contact.getTwitter());
     		oContactoVO.setFacebook(contact.getFacebook()); 
     		
     		ServicioContactoStub oStub = new ServicioContactoStub();
        	MostrarContactoBy oMostrarContacto = new MostrarContactoBy();
     		oMostrarContacto.setOContactoVO(oContactoVO);
     		MostrarContactoByResponse objResponde =  oStub.mostrarContactoBy(oMostrarContacto);
     		ContactoVO[] contacts2= objResponde.get_return();
     		
			 contactForm.setContacts(contacts2);
	         return new ModelAndView("showcontactrow" , "contactForm", contactForm);
	         
		} catch (RemoteException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();

			return new ModelAndView("error", "message", "ERROR");
		}
        
	}*/
    /*
    @RequestMapping(value = "/deleteContact", method = RequestMethod.POST)
    public ModelAndView deleteContact(@ModelAttribute("contact") @Valid  Contact contact, BindingResult result) {
    	try{
    		ContactoVO oContactoVO = new ContactoVO();
     		oContactoVO.setNombre(contact.getFirstname());
     		oContactoVO.setApellido(contact.getLastname());
     		oContactoVO.setMail(contact.getEmail());
     		oContactoVO.setTelefono(contact.getTelephone());
     		oContactoVO.setDireccion(contact.getAddress());
     		oContactoVO.setComuna(contact.getCity());
     		oContactoVO.setTwitter(contact.getTwitter());
     		oContactoVO.setFacebook(contact.getFacebook());
    		
    		ServicioContactoStub oStub = new ServicioContactoStub();
	    	
	    	EliminarContacto oEliminarContacto = new EliminarContacto();
	    	oEliminarContacto.setOContactoVO(oContactoVO);
	    	EliminarContactoResponse objResponse = oStub.eliminarContacto(oEliminarContacto);
	    	
			String mensaje = objResponse.get_return();
	        return new ModelAndView("saludo", "message", mensaje);
	        
    	} catch (RemoteException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();

			return new ModelAndView("error", "message", "ERROR");
		}
    }*/
    /*    
    @RequestMapping(value = "/updateContacto", method = RequestMethod.POST)      
    public ModelAndView updateContacto(@ModelAttribute("contactForm") @Valid  Contact contacto, @RequestParam("anterior") String ant, BindingResult result) {
       String[] valores = ant.split(";");
       System.out.println(ant);
       Contact[] contactos = new Contact[2];
       contactos[0].setFirstname(valores[0]);
       contactos[0].setLastname(valores[1]);
       contactos[0].setEmail(valores[2]);
       contactos[0].setTelephone(valores[3]);
       contactos[0].setAddress(valores[4]);
       contactos[0].setCity(valores[5]);
       contactos[0].setTwitter(valores[6]);
       contactos[0].setFacebook(valores[7]);
       contactos[1] = contacto;
       try {
       	
       	ServicioContactoStub oStub = new ServicioContactoStub();
   		// UPDATEA
   		ContactoVO oContactoVONuevo = new ContactoVO();
   		ContactoVO valr = new ContactoVO();
		oContactoVONuevo.setNombre(contactos[1].getFirstname());
		oContactoVONuevo.setApellido(contactos[1].getLastname());
		oContactoVONuevo.setMail(contactos[1].getEmail());
		oContactoVONuevo.setTelefono(contactos[1].getTelephone());
		oContactoVONuevo.setDireccion(contactos[1].getAddress());
		oContactoVONuevo.setComuna(contactos[1].getCity());
		oContactoVONuevo.setTwitter(contactos[1].getTwitter());
		oContactoVONuevo.setFacebook(contactos[1].getFacebook());
		
		System.out.println("nombre nuevo "+contactos[1].getFirstname()+" "+contactos[1]);
		System.out.println("nombre antiguo "+contactos[0].getFirstname()+" "+contactos[1]);
		
		valr.setNombre(contactos[0].getFirstname());
		valr.setApellido(contactos[0].getLastname());
		valr.setMail(contactos[0].getEmail());
		valr.setTelefono(contactos[0].getTelephone());
		valr.setDireccion(contactos[0].getAddress());
		valr.setComuna(contactos[0].getCity());
		valr.setTwitter(contactos[0].getTwitter());
		valr.setFacebook(contactos[0].getFacebook());
       	
       	ModificarContacto modCont =new ModificarContacto();
   		modCont.setOContactoVO(oContactoVONuevo);
   		modCont.setVal_antiguo(valr);
   		//aca me falta el string que le pasare y no puedo
   		ModificarContactoResponse resp=oStub.modificarContacto(modCont);
   		

   		//siguiendo la misma logica de la otra funcion
   		String mensaje = resp.get_return();
   		return new ModelAndView("saludo", "message", mensaje);
		} catch (RemoteException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();

			return new ModelAndView("error", "message", "ERROR");
		}
        
       //return "redirect:contacts.html";
       
   }*/
    
    @RequestMapping(value="/premod", method = RequestMethod.POST)
    public ModelAndView formModificar(@ModelAttribute("contact") @Valid  Consulta consulta) {
        
    	
        return new ModelAndView("premodificar", "contact", consulta);
    }
    
    @RequestMapping(value="/modificar", method = RequestMethod.POST)
    public ModelAndView modificar() {
         
        return new ModelAndView("modificar", "command", new Consulta());
    }
    
    @RequestMapping("/menu")
    public ModelAndView menu() {
         
        return new ModelAndView("menu", "contact", new Consulta());
    }
    
}