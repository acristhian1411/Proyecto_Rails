require 'test_helper'

class MarcaProveedorsControllerTest < ActionController::TestCase
  setup do
    @marca_proveedor = marca_proveedors(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:marca_proveedors)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create marca_proveedor" do
    assert_difference('MarcaProveedor.count') do
      post :create, marca_proveedor: { marca_id: @marca_proveedor.marca_id, proveedore_id: @marca_proveedor.proveedore_id }
    end

    assert_redirected_to marca_proveedor_path(assigns(:marca_proveedor))
  end

  test "should show marca_proveedor" do
    get :show, id: @marca_proveedor
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @marca_proveedor
    assert_response :success
  end

  test "should update marca_proveedor" do
    patch :update, id: @marca_proveedor, marca_proveedor: { marca_id: @marca_proveedor.marca_id, proveedore_id: @marca_proveedor.proveedore_id }
    assert_redirected_to marca_proveedor_path(assigns(:marca_proveedor))
  end

  test "should destroy marca_proveedor" do
    assert_difference('MarcaProveedor.count', -1) do
      delete :destroy, id: @marca_proveedor
    end

    assert_redirected_to marca_proveedors_path
  end
end
