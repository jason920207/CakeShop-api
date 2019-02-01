# @Author: xiaojiezhang
# @Date:   2018-10-02T19:52:46-04:00
# @Last modified by:   xiaojiezhang
# @Last modified time: 2019-02-01T09:29:53-05:00



# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database
# with its default values.
# The data can then be loaded with the rails db:seed (or created alongside the
# db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Category.delete_all
Product.delete_all

Category.create(name:"Cake",user_id:1)


Product.create(name: 'Signature Mille Crêpes - 9 inches',
              description: 'Our signature cake and famous worldwide, the Lady M Mille Crêpes features no less than twenty paper-thin handmade crêpes layered with ethereal light pastry cream. Delicate and irresistible, the top is gently caramelized till golden. Sink right in; alternating crêpe and cream layers literally melt in your mouth, leaving a subtle sweet finish.',
              picture:'https://s3.amazonaws.com/assets.ladym.com/production/uploads/000/000/437/original/LadyM_MC_Signature_v_03.jpg?1541051917',
              price:85,
              allergen:'Alcohol, Dairy, Eggs, Tree Nuts, Wheat',
              category_id:1,
              user_id:1)
