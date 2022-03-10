package org.service.sregion;

public class ServiceCrudS_RegionProxy implements org.service.sregion.ServiceCrudS_Region {
  private String _endpoint = null;
  private org.service.sregion.ServiceCrudS_Region serviceCrudS_Region = null;
  
  public ServiceCrudS_RegionProxy() {
    _initServiceCrudS_RegionProxy();
  }
  
  public ServiceCrudS_RegionProxy(String endpoint) {
    _endpoint = endpoint;
    _initServiceCrudS_RegionProxy();
  }
  
  private void _initServiceCrudS_RegionProxy() {
    try {
      serviceCrudS_Region = (new org.service.sregion.ServiceCrudS_RegionServiceLocator()).getServiceCrudS_Region();
      if (serviceCrudS_Region != null) {
        if (_endpoint != null)
          ((javax.xml.rpc.Stub)serviceCrudS_Region)._setProperty("javax.xml.rpc.service.endpoint.address", _endpoint);
        else
          _endpoint = (String)((javax.xml.rpc.Stub)serviceCrudS_Region)._getProperty("javax.xml.rpc.service.endpoint.address");
      }
      
    }
    catch (javax.xml.rpc.ServiceException serviceException) {}
  }
  
  public String getEndpoint() {
    return _endpoint;
  }
  
  public void setEndpoint(String endpoint) {
    _endpoint = endpoint;
    if (serviceCrudS_Region != null)
      ((javax.xml.rpc.Stub)serviceCrudS_Region)._setProperty("javax.xml.rpc.service.endpoint.address", _endpoint);
    
  }
  
  public org.service.sregion.ServiceCrudS_Region getServiceCrudS_Region() {
    if (serviceCrudS_Region == null)
      _initServiceCrudS_RegionProxy();
    return serviceCrudS_Region;
  }
  
  public java.lang.String agregarS_Region(int id, java.lang.String name) throws java.rmi.RemoteException{
    if (serviceCrudS_Region == null)
      _initServiceCrudS_RegionProxy();
    return serviceCrudS_Region.agregarS_Region(id, name);
  }
  
  public java.lang.String eliminarS_Region(int id) throws java.rmi.RemoteException{
    if (serviceCrudS_Region == null)
      _initServiceCrudS_RegionProxy();
    return serviceCrudS_Region.eliminarS_Region(id);
  }
  
  public java.lang.String consultaIndividualS_Region(int id) throws java.rmi.RemoteException{
    if (serviceCrudS_Region == null)
      _initServiceCrudS_RegionProxy();
    return serviceCrudS_Region.consultaIndividualS_Region(id);
  }
  
  public void connectDataBaseOracle() throws java.rmi.RemoteException{
    if (serviceCrudS_Region == null)
      _initServiceCrudS_RegionProxy();
    serviceCrudS_Region.connectDataBaseOracle();
  }
  
  public java.lang.String actualizarS_Region(java.lang.String name, int id) throws java.rmi.RemoteException{
    if (serviceCrudS_Region == null)
      _initServiceCrudS_RegionProxy();
    return serviceCrudS_Region.actualizarS_Region(name, id);
  }
  
  
}