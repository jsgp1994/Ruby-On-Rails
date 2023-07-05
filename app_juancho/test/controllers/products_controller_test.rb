require "test_helper"

class ProductsControllerTest < ActionDispatch::IntegrationTest

  test 'render a list of products' do
    get products_path #Es el prefijo de las rutas '/products'
    assert_response :success #Se espera que la petición sea exitosa
    assert_select '.product',2 #Espera dos productos en el html
  end


  test 'render a detailed product page' do
    get product_path(products(:one))
    assert_response :success #Se espera que la petición sea exitosa
    assert_select '.title', 'MyString'
    assert_select '.description', 'MyText'
    assert_select '.price', '1$'
  end

  test 'Render a new product form' do
    get new_product_path
    assert_response :success
    assert_select 'form'
  end

  test 'Render an edit product form' do
    get new_product_path(products(:one))
    assert_response :success
    assert_select 'form'
  end


  test 'allow to create a new product' do
    post products_path, params: {
      product: {
        title: 'Xiaomi redmi note 12',
        description: 'new',
        price: 50
      }
    }

    assert_redirected_to products_path
    assert_equal flash[:notice], 'Tu producto se ha creado correntamente'
  end

  test 'allows to update a product' do
    patch product_path(products(:one)), params: {
      product: {
        price: 165
      }
    }

    assert_redirected_to products_path
    assert_equal flash[:notice], 'Tu producto se ha actualizado correntamente'
  end

  test 'does not allow to update a product with an invalid field' do
    patch product_path(products(:one)), params: {
      product: {
        price: nil
      }
    }

    assert_response :unprocessable_entity
  end

  test 'does not allow to create a new product with empty fields' do
    post products_path, params: {
      product: {
        title: '',
        description: 'new',
        price: 50
      }
    }

    assert_response :unprocessable_entity
  end

  test 'can delete products' do
    assert_difference('Product.count', -1) do
      delete product_path(products(:one))
    end

    assert_redirected_to products_path
    assert_equal flash[:notice], 'Tu producto se ha eliminado correctamente'
  end



end
