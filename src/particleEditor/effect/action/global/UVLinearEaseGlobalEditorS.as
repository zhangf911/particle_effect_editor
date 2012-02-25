package particleEditor.effect.action.global
{
	import a3dparticle.animators.actions.uv.UVLinearEaseGlobal;
	import particleEditor.edit.EditorWithPropertyBaseS;
	
	/**
	 * ...
	 * @author liaocheng
	 */
	public class UVLinearEaseGlobalEditorS extends EditorWithPropertyBaseS
	{
		private var cycle:Number;
		private var scale:Number;
		
		public function UVLinearEaseGlobalEditorS()
		{
			super();
		}
		
		override public function createNeedStuff():*
		{
			return new UVLinearEaseGlobal(cycle, scale);
		}
		
		override public function importCode(xml:XML):void
		{
			super.importCode(xml);
			cycle=Number(xml.@cycle);
			scale=Number(xml.@scale);
		}
	}

}