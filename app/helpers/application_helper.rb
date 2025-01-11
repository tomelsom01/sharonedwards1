module ApplicationHelper
  def assign_meta_tags
    set_meta_tags(
      title: 'Absolute Health and Physio',
      description: "Expert physiotherapist with 30+ years of experience in musculoskeletal, sports, and pelvic health. Specializing in women's & men's health, sports injuries, and rural healthcare. Trained in Australia and UK, offering comprehensive physiotherapy services and innovative treatments.",
      keywords: 'Richmond Physiotherapy, Back pain, Neck pain, Knee pain, Osteoarthritis, Meniscus injury, Cruciate ligament tear, Muscle tear, Ligament tear, Foot injuries, Foot biomechanics, Orthotics, Pronation, Stress fracture, Postop, Rotator cuff tear, Pelvic organ prolapse, Bladder prolapse, Vaginal prolapse, Incontinence, Pelvic pain, Cystitis, Pessaries, Pelvic floor dysfunction, Pregnancy pain, Pelvic girdle pain, Antenatal physiotherapy, Post natal MOT',
      og: {
        title: "Sharon Edwards: Experienced Physiotherapist & Women's Health Specialist",
        description: "Discover expert physiotherapy care with Sharon Edwards. 30+ years experience in sports, pelvic health, and musculoskeletal treatments. Trained in UK & Australia, specializing in innovative rural healthcare solutions."
      }
    )
  end
end
