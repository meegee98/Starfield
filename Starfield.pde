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
class NormalParticle
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
		pattern= (int)(Math.random()*5);
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
	public void mousePressed()
	{

	}
	//your code here
}
interface Particle
{
	//your code here
}
class OddballParticle //uses an interface
{
	//your code here
}
class JumboParticle //uses inheritance
{
	//your code here
}

