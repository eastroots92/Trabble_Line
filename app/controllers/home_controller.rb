 require 'nokogiri'
 require 'open-uri'

class HomeController < ApplicationController
  

  
  def trabble
    
    if params[:subser].present?
      @searches = SubInfo.where(Title_info: params[:subser])
    else
      @searches = SubInfo.all
    end
    
    
    
    
        @s0222 = SubInfo.where("St_code= '0222'").order("Title_like DESC").limit(1)
        @s0201 = SubInfo.where("St_code= '0201'").order("Title_like DESC").limit(1)
        @s0202 = SubInfo.where("St_code= '0202'").order("Title_like DESC").limit(1)
        @s0203 = SubInfo.where("St_code= '0203'").order("Title_like DESC").limit(1)
        @s0204 = SubInfo.where("St_code= '0204'").order("Title_like DESC").limit(1)
        @s0205 = SubInfo.where("St_code= '0205'").order("Title_like DESC").limit(1)
        @s0206 = SubInfo.where("St_code= '0206'").order("Title_like DESC").limit(1)
        @s0207 = SubInfo.where("St_code= '0207'").order("Title_like DESC").limit(1)
        @s0208 = SubInfo.where("St_code= '0208'").order("Title_like DESC").limit(1)
        @s0209 = SubInfo.where("St_code= '0209'").order("Title_like DESC").limit(1)
        @s0210 = SubInfo.where("St_code= '0210'").order("Title_like DESC").limit(1)
        @s0211 = SubInfo.where("St_code= '0211'").order("Title_like DESC").limit(1)
        @s0212 = SubInfo.where("St_code= '0212'").order("Title_like DESC").limit(1)
        @s0213 = SubInfo.where("St_code= '0213'").order("Title_like DESC").limit(1)
        @s0214 = SubInfo.where("St_code= '0214'").order("Title_like DESC").limit(1)
        @s0215 = SubInfo.where("St_code= '0215'").order("Title_like DESC").limit(1)
        @s0216 = SubInfo.where("St_code= '0216'").order("Title_like DESC").limit(1)
        @s0217 = SubInfo.where("St_code= '0217'").order("Title_like DESC").limit(1)
        @s0218 = SubInfo.where("St_code= '0218'").order("Title_like DESC").limit(1)
        @s0219 = SubInfo.where("St_code= '0219'").order("Title_like DESC").limit(1)
        @s0220 = SubInfo.where("St_code= '0220'").order("Title_like DESC").limit(1)
        @s0221 = SubInfo.where("St_code= '0221'").order("Title_like DESC").limit(1)
        @s0223 = SubInfo.where("St_code= '0223'").order("Title_like DESC").limit(1)
        @s0224 = SubInfo.where("St_code= '0224'").order("Title_like DESC").limit(1)
        @s0225 = SubInfo.where("St_code= '0225'").order("Title_like DESC").limit(1)
        @s0226 = SubInfo.where("St_code= '0226'").order("Title_like DESC").limit(1)
        @s0227 = SubInfo.where("St_code= '0227'").order("Title_like DESC").limit(1)
        @s0228 = SubInfo.where("St_code= '0228'").order("Title_like DESC").limit(1)
        @s0229 = SubInfo.where("St_code= '0229'").order("Title_like DESC").limit(1)
        @s0230 = SubInfo.where("St_code= '0230'").order("Title_like DESC").limit(1)
        @s0231 = SubInfo.where("St_code= '0231'").order("Title_like DESC").limit(1)
        @s0232 = SubInfo.where("St_code= '0232'").order("Title_like DESC").limit(1)
        @s0233 = SubInfo.where("St_code= '0233'").order("Title_like DESC").limit(1)
        @s0234 = SubInfo.where("St_code= '0234'").order("Title_like DESC").limit(1)
        @s0235 = SubInfo.where("St_code= '0235'").order("Title_like DESC").limit(1)
        @s0236 = SubInfo.where("St_code= '0236'").order("Title_like DESC").limit(1)
        @s0237 = SubInfo.where("St_code= '0237'").order("Title_like DESC").limit(1)
        @s0238 = SubInfo.where("St_code= '0238'").order("Title_like DESC").limit(1)
        @s0239 = SubInfo.where("St_code= '0239'").order("Title_like DESC").limit(1)
        @s0240 = SubInfo.where("St_code= '0240'").order("Title_like DESC").limit(1)
        @s0241 = SubInfo.where("St_code= '0241'").order("Title_like DESC").limit(1)
        @s0242 = SubInfo.where("St_code= '0242'").order("Title_like DESC").limit(1)
        @s0243 = SubInfo.where("St_code= '0243'").order("Title_like DESC").limit(1)
        @s0244 = SubInfo.where("St_code= '0244'").order("Title_like DESC").limit(1)
        @s0245 = SubInfo.where("St_code= '0245'").order("Title_like DESC").limit(1)
        @s0246 = SubInfo.where("St_code= '0246'").order("Title_like DESC").limit(1)
        @s0247 = SubInfo.where("St_code= '0247'").order("Title_like DESC").limit(1)
        @s0248 = SubInfo.where("St_code= '0248'").order("Title_like DESC").limit(1)
        @s0249 = SubInfo.where("St_code= '0249'").order("Title_like DESC").limit(1)
        @s0250 = SubInfo.where("St_code= '0250'").order("Title_like DESC").limit(1)
        @s0260 = SubInfo.where("St_code= '0260'").order("Title_like DESC").limit(1)
        
   
    
  end
  
  def info
      
      @url = request.original_url
      @code = @url.split('?=',2)
      
      @Nsubinfo = SubInfo.where("St_code= ?",@code[1]).order("id DESC").limit(3)
      @Bsubinfo = SubInfo.where("St_code= ?",@code[1]).order("Title_like DESC").limit(3)
      @Hsubinfo = SubInfo.where("St_code= ?",@code[1]).order("Title_like DESC").limit(1)
      #@titles = Array.new
   
      #doc = Nokogiri::HTML(open("http://www.diningcode.com/list.php?query=강남"))
      #doc.css(".dc-restaurant-name//a").each do |x|
      #  @titles << x.inner_text
          
      #end
  end
  
  def like
      @one_post = SubInfo.find( params[:post_id])
      @one_post.Title_like +=1
      @one_post.save
      
      # redirect_to '/home/info?='+@one_post.St_code
      # redirect_to :back
  end
  
  def write
      
      @subinfo = SubInfo.new
      @subinfo.Title_info = params[:info_title]
      @subinfo.St_code = params[:info_sub]
      @subinfo.Title_like = 0
      @subinfo.save
      redirect_to :back
      
  end
  
  def test
      @subinfo = SubInfo.where("St_code = '0222'")
  end
  
  def more
      @url = request.original_url
      @code = @url.split('?=',2)
      
      @subinfo = SubInfo.where("St_code= ?",@code[1])
      
      
  end

  
end
