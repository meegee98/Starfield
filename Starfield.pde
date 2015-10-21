Particle [] dots;
double dX, dY;

void setup()
{
	size(800, 800);
	frameRate(40);
	dots= new Particle [500];
	
	for(int i=0; i<dots.length; i++)
	{
		if(i==0)
		{
			dots[i]= new OddballParticle();
		}
		if(i==1)
		{
			dots[i]= new JumboParticle();
		}
		if(i>1)
		{
			dots[i]= new NormalParticle();
		}
		
	}
}
void draw()
{
	background(0);
	for(int i=0; i<dots.length; i++)
	{
		dots[i].move();
		dots[i].show();
	
		if(i>1)
		{
			((NormalParticle)dots[i]).reIntial();
		}
	}
}
class NormalParticle implements Particle
{
	double dX, dY, dSpeed, dAngle;
	int Color;
	
	NormalParticle()
	{
		dX=400;
		dY=400;
		dSpeed=(Math.random()*15);
		dAngle=(Math.PI*2*Math.random());
		Color=color((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
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
		fill(0);
		ellipse((int)dX-5, (int)dY-3, 5, 5);
		ellipse((int)dX+5, (int)dY-3, 5, 5);
		noFill();
		stroke(0);
		arc((int)dX, (int)dY, 10, 10, 0, PI);
	}
	public void reIntial()
	{
		if(dX>800 || dY<0)
		{
			dY= 400;
			
		}
		if(dY>800 || dY<0)
		{
			dY=400;
			
		}
	}
}
interface Particle
{
	public void show();
	public void move();
}
class OddballParticle implements Particle//uses an interface
{
	double dX, dY, dSpeed, dAngle;
	
	OddballParticle()
	{
		dX=350;
		dY=425;
		dSpeed=(Math.random()*15);
		dAngle=(Math.PI*2*Math.random());
	}
	public void move()
	{
		
		dX=dX+(int)(Math.random()*3);
		dY= dY+ (int)(Math.random()*4)-1;
	}
	public void show()
	{
		fill(255, 255, 0);
		ellipse((int)dX, (int)dY, 75, 75);
		fill(0);
		ellipse((int)dX-10, (int)dY-10, 15, 15);
		ellipse((int)dX+15, (int)dY-10, 15, 15);
		noFill();
		stroke(0);
		arc((int)dX+1, (int)dY+4, 50, 50, 0, PI);
	}
}
class JumboParticle extends NormalParticle //uses inheritance
{
	JumboParticle()
	{
		dX=350;
		dY=425;
		dSpeed=(Math.random()*15);
		dAngle=(Math.PI*2*Math.random());
	} 
	public void move()
	{
		dX=dX+(int)(Math.random()*6)-3;
	}
	public void show()
	{
		fill(255);
		ellipse((int)dX, (int)dY-70, 150, 150);
		fill(0);
		ellipse((int)dX-30, (int)dY-70, 20, 20);
		ellipse((int)dX+20, (int)dY-70, 20 ,20);
		noFill();
		ellipse((int)dX, (int)dY-20, 100, 50);
	}
}

