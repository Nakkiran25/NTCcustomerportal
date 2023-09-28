<%@ Page Title="" Language="C#" AutoEventWireup="true" MasterPageFile="~/Home.Master" CodeBehind="cusportal.aspx.cs" Inherits="NTCcustomerportal.cusportal" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid site-width">
        <!-- START: Breadcrumbs-->
        <div class="row ">
            <div class="col-12  align-self-center"></div>
        </div>
        <br/>

        <div class="row">
            <div class="col-12 col-md-12 mt-0">
                <div class="card mt-0">
                  <div class="card-body">
                        <form runat="server">
                            <div class="form-row">
                                <div class="form-group  col-md-3" style="left: 0px; top: 20px">
                                </div>
                                <div class="form-group  col-md-3">
                                    <div class="input-group mb-0">
                                        <asp:TextBox ID="Txtcon" runat="server" class="form-control" 
                                            placeholder="Enter Consignment No here" Style="height: 40px" AutoComplete="off">
                                         </asp:TextBox>
                                        <div class="input-group-append" id="button">
                                            <asp:Button ID="Btntrack" runat="server" OnClientClick="changeColor()" class="btn mb-0" Style="background-color: #ffa831; color: #fff; width: 55px;" Text="Track" OnClick="Btntrack_Click1" />
                                        </div>
                                    </div>
                                </div>
                               <%-- <div class="btn-group  col-md-1 mb-3" style="left: 0px; top: 20px">
                                    <button type="button" class="btn" style="background-color: #22b7eb; color: #fff";>Client Login</button>
                                </div>--%>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>


     <div class="row">
            <div class="col-12  align-self-center">
                <div class="sub-header mt-1 py-1 align-self-center d-sm-flex w-100 rounded">
                </div>
            </div>
         
            <div class="col-12 col-md-12 mt-0">
                <div class="card mt-0">
                    <div class="card-body">
                        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/pixeden-stroke-7-icon@1.2.3/pe-icon-7-stroke/dist/pe-icon-7-stroke.min.css">
                        <div class="container padding-bottom-3x mb-1">
                            <div class="card mb-3">
                                <div class="p-1 text-center text-white text-lg bg-dark rounded-top">
                                    <span class="text-uppercase">
                                        <div class="d-flex flex-wrap flex-sm-nowrap justify-content-between py-1 px-1">
                                            <div class="w-100 text-center py-1 px-2"><span style="color: #fca51d; font-size: 12px; font-weight: bold">Consignment No:</span><asp:Label ID="track_no" runat="server" Text="RPTL002133"></asp:Label>
                                            </div>
                                            <div class="w-100 text-center py-1 px-2"><span style="color: #fca51d; font-size: 12px; font-weight: bold">Consignment Date:</span><asp:Label ID="date" runat="server" Text="02-May-2023"></asp:Label>
                                            </div>
                                            <div class="w-100 text-center py-1 px-2"><span style="color: #fca51d; font-size: 12px; font-weight: bold">Status:</span><asp:Label ID="sts" runat="server" Text="Intransit"></asp:Label>
                                            </div>
                                        </div>
                                    </span>
                                </div>
                                
                                <div class="d-flex flex-wrap flex-sm-nowrap justify-content-between py-1 px-1 bg-secondary">
                                    <div class="w-100 text-center py-1 px-2"><span style="color: #000; font-size: 12px; font-weight: bold">Pickup Location:</span> <asp:Label ID="pickup" runat="server" Text="CHENNAI"></asp:Label></div>
                                    <div class="w-100 text-center py-1 px-2"><span style="color: #000; font-size: 12px; font-weight: bold">Delivery Location:</span> <asp:Label ID="delivery" runat="server" Text="RANIPET"></asp:Label></div>
                                </div>
                                <div class="card-body">
                                    <div class="steps d-flex flex-wrap flex-sm-nowrap justify-content-between padding-top-2x padding-bottom-1x">
                                        <div class="step" runat="server" id="divOrderconfirmed">
                                            <div class="step-icon-wrap">
                                                <div class="step-icon"><i class="pe-7s-smile"></i></div>
                                            </div>
                                            <br />
                                            <asp:Label ID="Orderconfirmed" CssClass="step"  Style="color: #000; font-size: 13px; font-weight: bold" runat="server" Text="Order Confirmed" ForeColor="Green"></asp:Label><br />
                                            <asp:Label ID="order_confirmed" runat="server" Style="color: #555; font-size: 12px;" Text="02-May-2023"></asp:Label>
                                        </div>
                                        <div class="step" runat="server" id="divPickuparrived">
                                            <div class="step-icon-wrap">
                                                <div class="step-icon"><i class="pe-7s-check"></i></div>
                                          
                                            </div>
                                            <br />
                                            <asp:Label ID="Pickuparrived" CssClass="step" runat="server"  Text="Pickup Arrived" Style="color: #000; font-size: 13px; font-weight: bold"></asp:Label><br />
                                           Planned: <asp:Label ID="Label8" runat="server" Text="Planned: 02-May-2023 "></asp:Label><br />
                                            <asp:Label ID="Label7" Style="color: #24acf1; font-size: 12px;" runat="server" Text=""></asp:Label>
                                       </div>
                                        <div class="step" runat="server" id="divPickupdepartured">
                                            <div class="step-icon-wrap">
                                                <div class="step-icon"><i class="pe-7s-check"></i></div>
                                            </div>
                                            <br />
                                            <asp:Label ID="Pickupdepartured"  CssClass="step" runat="server"  Text="Pickup Departured" Style="color: #000; font-size: 13px; font-weight: bold" ForeColor="Green"></asp:Label><br />
                                            <asp:Label ID="Label10" runat="server" Text="02-May-2023" Style="color: #24acf1; font-size: 12px;"></asp:Label>
                                        </div>
                                        <div class="step" runat="server" id="divIntransit">
                                            <div class="step-icon-wrap">
                                                <div class="step-icon"><i class="pe-7s-map-marker pe-lg pe-va"></i></div>
                                            </div>
                                            <br/>

                                            <asp:Label ID="Intransit"  CssClass="steps" runat="server" Style="color: #000; font-size: 13px; font-weight: bold" Text="Intransit"></asp:Label>

                                            <br />
                                           
                                            <asp:Label ID="Label12" runat="server" Style="color: #24acf1; font-size: 12px;" Text="Kharvae Nagar, Pune, Maharashtra"></asp:Label>
                                            <br />

                                            <asp:Label ID="Label13" runat="server" Style="color: #fca51d; font-size: 12px;" Text="02-May-2023"></asp:Label>
                                        </div>
                                        <div class="step" runat="server" id="divDeliveryarrived">
                                            <div class="step-icon-wrap">
                                                <div class="step-icon"><i class="pe-7s-check"></i></div>
                                            </div>
                                            <br />

                                            <asp:Label ID="Deliveryarrived" CssClass="step" runat="server" Text="Delivery Arrived" Style="color: #000; font-size: 13px; font-weight: bold"></asp:Label><br />
                                            <asp:Label ID="Label15" runat="server" Style="color: #555; font-size: 12px;" Text="Planned: 05-May-2023"></asp:Label>
                                            <br />
                                            <br />
                                            <asp:Label ID="Label16" runat="server" Style="color: #24acf1; font-size: 12px;" Text=""></asp:Label>

                                        </div>
                                        <div class="step" runat="server" id="divDeliverydepartured">
                                            <div class="step-icon-wrap">
                                                <div class="step-icon"><i class="pe-7s-check"></i></div>
                                            </div>
                                            <br />
                                            <asp:Label ID="Deliverydepartured" CssClass="step" runat="server" Text="Delivery Departured" Style="color: #000; font-size: 13px; font-weight: bold"></asp:Label>
                                            <br />
                                            <asp:Label ID="Label18" Style="color: #24acf1; font-size: 12px;" runat="server" Text="DD-MMM-YYYY"></asp:Label>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <script src="dist/tracking/jquery-1.10.2.min.js"></script>
                 
                            <script src="dist/tracking/bootstrap.bundle.min.js"></script>
                            
                            <script type="text/javascript"></script>
                             
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    





</asp:Content>


