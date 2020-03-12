ActiveAdmin.register_page "Dashboard" do
  menu priority: 1, label: proc { I18n.t("active_admin.dashboard") }

  content title: proc { I18n.t("active_admin.dashboard") } do
    div class: "blank_slate_container", id: "dashboard_default_message" do
      span class: "blank_slate" do
        span I18n.t("active_admin.dashboard_welcome.welcome")
        small I18n.t("active_admin.dashboard_welcome.call_to_action")
      end
    end

    columns do
      panel "Usuarios" do
        ul do
          li "Usuarios registrados: #{User.count}"
          li "Administradores registrados: #{AdminUser.count}"
        end
      end
    end
    columns do
      panel "Comentarios" do
        ul do
          li "Comentarios creados: #{Comment.count}"
        end
      end
    end

    panel "Gráfico" do
      render 'shared/chart'
    end
  end
end
