class Hooks < Redmine::Hook::ViewListener
  render_on :view_timelog_edit_form_bottom, :partial=> 'hooks/redmine_app/show_issues_fields'
  def controller_timelog_edit_before_save(context={ })
    te = context[:time_entry]
    params = context[:params]
    issue = te.issue
    if issue
      done_ratio = params[:done_ratio]
      status = params[:status_id]
      issue.status_id = status
      issue.done_ratio = done_ratio
      issue.save
    end
  end

  # def controller_issues_edit_after_save(context={})
  #   te = context[:time_entry]
  #   issue = context[:issue]
  # end
end