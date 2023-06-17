<form action="/add-book" method = "POST">
  <div class="row">
    <div class="col-12">
      <label>NAME: </label>
    </div>
  </div>
  <div class="row mt-2">
    <div class="col-12">
      <input type="text" class="form-control" name="book_name">
    </div>
  </div>

  <div class="row mt-3">
    <div class="col-12">
      <label>AUTHOR: </label>
    </div>
  </div>
  <div class="row mt-2">
    <div class="col-12">
      <input type="text" class="form-control" name="book_author">
    </div>
  </div>

  <div class="row mt-3">
    <div class="col-12">
      <label>GENRE: </label>
    </div>
  </div>
  <div class="row mt-2">
    <div class="col-12">
      <select class="form-select" name="book_genre">
        <option>Fantasy</option>
        <option>Roman</option>
        <option>Horor</option>
        <option>Biography</option>
        <option>Comics</option>
      </select>
    </div>
  </div>

<%--&lt;%&ndash;  <div class="row">&ndash;%&gt;&ndash;%&gt;--%>
<%--    <div class="col-12">&ndash;%&gt;--%>
<%--      <label>PRICE: </label>&ndash;%&gt;--%>
<%--    </div>&ndash;%&gt;--%>
<%--  </div>&ndash;%&gt;--%>
<%--<  <div class="row mt-2">&ndash;%&gt;--%>
<%--    <div class="col-12">&ndash;%&gt;--%>
<%--      <input type="text" class="form-control" name="book_price">&ndash;%&gt;--%>
<%--    </div>&ndash;%&gt;--%>
<%--  </div>&ndash;%&gt;--%>

  <div class="row mt-2">
    <div class="col-12">
      <select class="form-select" name="book_price">
        <%
          for(int i = 0; i < 100000; i+=1000){
        %>
          <option><%=i%></option>
        <%
          }
        %>
      </select>
    </div>
  </div>

  <div class="row">
    <div class="col-12">
      <label>DESCRIPTION: </label>
    </div>
  </div>
  <div class="row mt-2">
    <div class="col-12">
      <textarea name="book_desciption" class="form-control" rows="5"></textarea>
    </div>
  </div>

  <div class="row mt-3">
    <div class="col-12">
      <button class="btn btn-success">ADD BOOK</button>
    </div>
  </div>
</form>