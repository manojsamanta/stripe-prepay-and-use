defmodule PrepayAndUseWeb.Authorizer do

  alias PrepayAndUse.Accounts.User
  alias PrepayAndUse.Business.Project
  alias PrepayAndUseWeb.PaymentController

  def authorize(:show, %Project{} = project, %User{}=user) do
    case user.role do
      "admin"  -> :ok
      "customer"  -> :ok
      "guest" -> {:route, project}
    end
  end

  def authorize(:admin, %Project{} = _project, %User{}=user) do
    if user.role== "admin" do
      :ok 
    else
      {:error, :unauthorized}
    end
  end

end
