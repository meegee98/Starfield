//your code here
NormalParticle[] dots;
//int numDots= 300;
void setup()
{
	size(800, 800);
	dots= new NormalParticle [500];
	for(int i=0; i<dots.length; i++)
	{
		dots[i]= new NormalParticle();
		

	}//your code here
}
void draw()
{
	background(0);
	for(int i=0; i<dots.length; i++)
	{
		dots[i].move();
		dots[i].show();
	}//your code here
}
class NormalParticle implements Particle
{
	double dX, dY, dSpeed, dAngle;
	int Color;
	int pattern;
	NormalParticle()
	{
		
		dX=400;
		dY=400;
		dSpeed=(Math.random()*15);
		dAngle=(Math.PI*2*Math.random());
		Color=color((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
		//pattern= (int)(Math.random()*5);
	}
	public void move()
	{
		dX=Math.cos(dAngle)*dSpeed+dX;
		dY=Math.sin(dAngle)*dSpeed+dY;
	}
	public void show()
	{
		fill(Color);
		noStroke();
		ellipse((int)dX, (int) dY, 20, 20);
	}
	/*public void mousePressed()
	{
		pattern= (int)(Math.random()*5);
		dX=400;
		dY=400;
		if(pattern==1)
		{
			dSpeed=(int)(Math.random()*15);
		}

	}*/
	//your code here
}
interface Particle
{
	public void show();
	public void move();//your code here
}
class OddballParticle implements Particle//uses an interface
{
	double oddX, oddY, oddSpeed, oddAngle;
	
	OddballParticles()
	{
		oddX=350;
		oddY=425;
		oddSpeed=(Math.random()*15);
		oddAngle=(Math.PI*2*Math.random());
	}//your code here
}
class JumboParticle //uses inheritance
{
	//your code here
}

