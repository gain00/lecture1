<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file = "include/header.jsp"%>


<form action="writer-process.jsp" method="post" class="join" name="joinForm">
  <div class="container-sm mt-5">
    <div class="row justify-content-center">
      <div class="col-6">

        <div class="mb-3">
          <label for="floatingName">Name</label>
          <input type="text" name="userName" class="form-control" id="floatingName" placeholder="이름을 입력해 주세요." />
        </div>
        <div class="mb-3">
          <label for="floatingMail">Title</label>
          <input type="text" name="title" class="form-control" id="floatingMail" placeholder="제목을 입력해 주세요." />
        </div>

    <div class="mb-3">
  <label for="exampleFormControlTextarea1" class="form-label">content</label>
  <textarea name= "contents" class="form-control" id="exampleFormControlTextarea1" rows="3"></textarea>
</div>
        <div class="text-center">
          <button type="submit" id="btnSubmit" class="btn btn-primary btn-lg">confirm</button>
          <button type="reset" class="btn btn-secondary btn-lg">Join</button>
        </div>
      </div>
    </div>
  </div>
</form>
<%@ include file = "include/footer.jsp"%>