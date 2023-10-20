<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="modal fade" id="editBookModal" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="simpleBookModalLabel">Edit Simple Book</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <form id="simpleBookForm" action="book?action=edit-book" method="POST"
                      enctype="multipart/form-data"
                      onsubmit="return validateEditForm()">
                    <!--Id-->
                    <div class="form-group" style="display: none">
                        <label for="idInput">Id: </label>
                        <input type="text" class="form-control" id="idInput" name="id">
                    </div>
                    <!--Name-->
                    <div class="form-group">
                        <label for="name">Name:</label>
                        <input type="text" class="form-control" id="nameInput" name="name">
                        <div id="nameError" class="error"></div>
                    </div>
                    <!--Image-->
                    <div class="form-group">
                        <label for="image">Image: </label>
                        <input type="hidden" id="imagePathInput" name="imagePath">
                        <div class="input-group mb-3">
                            <div class="custom-file">
                                <input type="file" class="custom-file-input" id="imageInput" name="image" onchange="displayImageEdit(this)">
                                <label class="custom-file-label">Choose file</label>
                            </div>
                        </div>
                        <!-- This is the image preview for the edit form -->
                        <img id="editPreviewImage" src="#" alt="Preview" style="display: none; max-width: 300px; max-height: 300px;">
                    </div>
                    <!--Price-->
                    <div class="form-group">
                        <label for="price">Price:</label>
                        <input type="text" class="form-control" id="priceInput" name="price">
                        <div id="priceError" class="error"></div>
                    </div>
                    <!--Quantity-->
                    <div class="form-group">
                        <label for="quantity">Quantity:</label>
                        <input type="text" class="form-control" id="quantityInput" name="quantity">
                        <div id="quantityError" class="error"></div>
                    </div>
                    <!--Description-->
                    <div class="form-group">
                        <label for="descriptionInput">Description:</label>
                        <textarea class="form-control" id="descriptionInput" name="description"></textarea>
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancel</button>
                <button type="submit" class="btn btn-primary" form="simpleBookForm"
                        >Update</button>
            </div>
        </div>
    </div>
</div>

<script>
    function editBookModal(buttonElement) {
        // Get the closest row from the clicked button
        const row = $(buttonElement).closest('tr');
        // Extract data from the row
        const name = row.find('[name="name"]').text().trim();
        const description = row.find('[name="description"]').text().trim();
        const price = row.find('[name="price"]').text().replace('VNĐ', '').trim();
        const quantity = row.find('[name="quantity"]').text().trim();
        const id = row.find('input[name="id"]').val();
        const imgSrc = row.find('img').attr('src');

        ; // If you need the book ID for something

        // Populate the modal fields with the extracted data
        $('#nameInput').val(name);
        $('#descriptionInput').val(description);
        $('#priceInput').val(price);
        $('#quantityInput').val(quantity);
        $('#idInput').val(id);
        document.getElementById("imagePathInput").value = imgSrc;

        // Extract the image source from the row

        // Set the source for the preview image in the edit modal and show it
        const editPreviewImage = document.getElementById("editPreviewImage");
        editPreviewImage.src = imgSrc;
        editPreviewImage.style.display = "block";

        // Note: For the image, you might want to extract the src from the <img> tag
        // and then set it to the preview image in the modal. For simplicity, I've skipped that part here.
    }

    function displayImageEdit(input) {
        var editPreviewImage = document.getElementById("editPreviewImage");
        var file = input.files[0];

        if (file) {
            var reader = new FileReader();

            reader.onload = function (e) {
                editPreviewImage.src = e.target.result;
                editPreviewImage.style.display = "block";
            }

            reader.readAsDataURL(file);
        } else {
            // Hide the preview image if no file is chosen
            editPreviewImage.style.display = "none";
        }
    }

    function validateEditForm() {
        var hasError = false;

        var name = document.getElementById("nameInput").value;
        var price = document.getElementById("priceInput").value;
        var quantity = document.getElementById("quantityInput").value;

        var nameError = document.getElementById("nameError");
        var priceError = document.getElementById("priceError");
        var quantityError = document.getElementById("quantityError");

        // Reset lỗi
        nameError.textContent = "";
        priceError.textContent = "";
        quantityError.textContent = "";

        // Kiểm tra tên sách
        if (name.trim() === "") {
            nameError.textContent = "Tên sách không được để trống!";
            hasError = true;
        }

        // Kiểm tra giá sách
        if (price.trim() === "" || isNaN(price) || Number(price) < 0) {
            priceError.textContent = "Giá sách không được để trống và phải là số không âm!";
            hasError = true;
        }

        // Kiểm tra số lượng sách
        if (quantity.trim() === "" || isNaN(quantity) || Number(quantity) < 0) {
            quantityError.textContent = "Số lượng sách không được để trống và phải là số không âm!";
            hasError = true;
        }

        return !hasError;
    }
</script>