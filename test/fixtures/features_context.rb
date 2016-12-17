FeatureFlipper.features do
  in_state :context do
    feature :feature1
    feature :feature2
    feature :feature3
  end
end


FeatureFlipper::Config.states = {
  :context  => { :when => Proc.new { |feature| current_user_betas.include?(feature) } }
}
