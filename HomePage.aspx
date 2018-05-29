<%@ Page Title="Flower Paradise" Language="C#" AutoEventWireup="true" CodeFile="HomePage.aspx.cs" Inherits="HomePage" MasterPageFile="~/FPmasterPage.master" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="Server">
    <div id="myCarousel" class="carousel slide" data-ride="carousel">

        <!-- Indicators -->
        <ol class="carousel-indicators">
            <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
            <li data-target="#myCarousel" data-slide-to="1"></li>
            <li data-target="#myCarousel" data-slide-to="2"></li>
        </ol>

        <!-- Wrapper for slides -->
        <div class="carousel-inner" role="listbox">
            <div class="item active">
                <img src="img/roses-lilies.jpg" width="1200" height="700" />
                <div class="carousel-caption">
                </div>
            </div>

            <div class="item">
                <img src="img/flower.jpg" width="1200" height="700" />
                <div class="carousel-caption">
                </div>
            </div>

            <div class="item">
                <img src="img/alstroemeria.jpg" width="1200" height="700" />
                <div class="carousel-caption">
                </div>
            </div>
        </div>

        <!-- Left and right controls -->
        <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
            <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
        </a>
        <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
            <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
        </a>
    </div>

    <!-- Container (About Section) -->
    <div id="about" class="container text-center">
        <h3>Our History</h3>
        <p><em>We deliver happiness.</em></p>
        <p>
            Over 6 million bouquets ago, beneath an umbrella in Mansfield, Erik and Sandra Hoving started selling flowers.
      They knew they wanted to do something unique so started by speaking to customers to find out what they really wanted. 
      It didn't take too long before the idea of postal flowers blossomed.
        </p>

        <p>
            We started working with the Post Office in 1990 dispatching a grand total of 5 bouquets in that first week.
      We've been sending flowers out by post ever since and still talk to our customers constantly. 
      It's a model that has stood the test of time. Lots of people have since copied us which we find quite flattering really.
        </p>

        <p>Around the turn of the millennium we took the decision to try our hand online and by 2004 it was pretty obvious this was a good decision!</p>

        <p>
            Since those first web sales we've built our own HQ and extended it twice,
      we've won a number of awards and been visited by royalty. We still like to do things a bit differently and all Bunches bouquets are designed and dispatched by our own passionate team.
      You can also call and speak to us too, or email, or use live chat if you prefer.
        </p>

        <p>
            Today Bunches is run by the next generation of the family (Dani took the reins in 2006, her husband Dan in 2012).
      Our values haven't changed since those umbrella days though. We're still listening to customers who trust us with their important occasions.
      We take that responsibility seriously!
        </p>
    </div>

    <!-- Container (PRODUCTS Section) -->
    <div id="products" class="bg-1">
        <div class="container">
            <h3 class="text-center">PRODUCTS</h3>
            <p class="text-center">
                Send a bouquet of fresh flowers for any occasion and enjoy free delivery.<br />
            </p>

            <div class="row text-center">
                <div class="col-sm-4">
                    <div class="thumbnail">
                        <img src="img/PRODUCT_Butterfly_Bliss.jpg" alt="butterfly bliss" width="400" height="300" />
                        <p><strong>Butterfly Bliss</strong></p>
                        <p>$20.99</p>
                        <button class="btn" data-toggle="modal" data-target="#myModal">Buy</button>
                    </div>
                </div>
                <div class="col-sm-4">
                    <div class="thumbnail">
                        <img src="img/PRODUCT_Red_Roses.jpg" alt="red roses" width="400" height="300" />
                        <p><strong>12 Red Roses</strong></p>
                        <p>$23.99</p>
                        <button class="btn" data-toggle="modal" data-target="#myModal">Buy</button>
                    </div>
                </div>
                <div class="col-sm-4">
                    <div class="thumbnail">
                        <img src="img/PRODUCT_Sunshine_Bouquet.jpg" alt="sunshine bouquet" width="400" height="300" />
                        <p><strong>Sunshine Bouequet</strong></p>
                        <p>$19.99</p>
                        <button class="btn" data-toggle="modal" data-target="#myModal">Buy</button>
                    </div>
                </div>
            </div>
        </div>

        <!-- Modal -->
        <div class="modal fade" id="myModal" role="dialog">
            <div class="modal-dialog">

                <!-- Modal content-->
                <div class="modal-content" runat="server">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">×</button>
                        <h4><span class="glyphicon glyphicon-lock"></span>Flowers</h4>
                    </div>
                    <div class="modal-body">

                        <div class="form-group">
                            <asp:Label runat="server"><span class="glyphicon glyphicon-shopping-cart"></span>Bouquets</asp:Label>
                            <asp:TextBox runat="server" type="number" class="form-control" placeholder="How many?" />
                        </div>
                        <div class="form-group">
                            <asp:Label runat="server"><span class="glyphicon glyphicon-user"></span>Send To</asp:Label>
                            <asp:TextBox runat="server" type="text" class="form-control" placeholder="Enter address" />
                        </div>
                        <button type="submit" class="btn btn-block">
                            Pay 
                <span class="glyphicon glyphicon-ok"></span>
                        </button>

                    </div>
                    <div class="modal-footer">
                        <button type="submit" class="btn btn-danger btn-default pull-left" data-dismiss="modal">
                            <span class="glyphicon glyphicon-remove"></span>Cancel
                        </button>
                        <p>Need <a href="#">help?</a></p>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Container (Contact Section) -->
    <div id="contact" class="container">
        <h3 class="text-center">Contact</h3>
        <p class="text-center"><em>We love our customers!</em></p>

        <div class="row">
            <div class="col-md-4">
                <p>Have questions? Drop a note.</p>
                <p><span class="fa fa-map-marker"></span> Sofia, BG</p>
                <p><span class="fa fa-mobile"></span> Phone: +359 123456789</p>
                <p><span class="fa fa-envelope"></span> Email: mail@mail.com</p>
            </div>
            <div class="col-md-8">
                <div class="row">
                    <div class="col-sm-6 form-group">
                        <input class="form-control" id="name" name="name" placeholder="Name" type="text" />
                    </div>
                    <div class="col-sm-6 form-group">
                        <input class="form-control" id="email" name="email" placeholder="Email" type="email" />
                    </div>
                </div>
                <textarea class="form-control" id="comments" name="comments" placeholder="Comment" rows="5"></textarea>
                <br />
                <div class="row">
                    <div class="col-md-12 form-group">
                        <button class="btn pull-right" type="submit">Send</button>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <iframe src="https://www.google.com/maps/embed?pb=!1m10!1m8!1m3!1d2932.3067225460854!2d23.322269743676777!3d42.69722576520244!3m2!1i1024!2i768!4f13.1!5e0!3m2!1sbg!2sbg!4v1526759047357" width="1200" height="400" style="border:0" id="googleMap"></iframe>

    <script src="main.js"></script>

</asp:Content>


