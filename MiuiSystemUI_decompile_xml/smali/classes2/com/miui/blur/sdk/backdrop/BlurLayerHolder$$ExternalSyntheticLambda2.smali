.class public final synthetic Lcom/miui/blur/sdk/backdrop/BlurLayerHolder$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 2
    iput-object p2, p0, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 2
    packed-switch v0, :pswitch_data_0

    .line 4
    goto :goto_0

    .line 7
    :pswitch_0
    iget-object p0, p0, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    .line 8
    check-cast p0, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;

    .line 10
    iget-object v0, p0, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;->mBlurBuffer:Lcom/miui/blur/sdk/backdrop/BlurLayerHolder$BlurBufferHolder;

    .line 12
    if-eqz v0, :cond_0

    .line 14
    iget-object v1, v0, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder$BlurBufferHolder;->mInput:Landroid/renderscript/Allocation;

    .line 16
    invoke-virtual {v1}, Landroid/renderscript/Allocation;->destroy()V

    .line 18
    iget-object v1, v0, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder$BlurBufferHolder;->mOutput:Landroid/renderscript/Allocation;

    .line 21
    invoke-virtual {v1}, Landroid/renderscript/Allocation;->destroy()V

    .line 23
    iget-object v0, v0, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder$BlurBufferHolder;->mBlurred:Landroid/graphics/Bitmap;

    .line 26
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 28
    const/4 v0, 0x0

    .line 31
    iput-object v0, p0, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;->mBlurBuffer:Lcom/miui/blur/sdk/backdrop/BlurLayerHolder$BlurBufferHolder;

    .line 32
    :cond_0
    iget-object p0, p0, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;->mScriptIntrinsicBlur:Landroid/renderscript/ScriptIntrinsicBlur;

    .line 34
    invoke-virtual {p0}, Landroid/renderscript/ScriptIntrinsicBlur;->destroy()V

    .line 36
    return-void

    .line 39
    :goto_0
    iget-object p0, p0, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    .line 40
    check-cast p0, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder$BlurBufferHolder;

    .line 42
    iget-object v0, p0, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder$BlurBufferHolder;->mInput:Landroid/renderscript/Allocation;

    .line 44
    invoke-virtual {v0}, Landroid/renderscript/Allocation;->destroy()V

    .line 46
    iget-object v0, p0, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder$BlurBufferHolder;->mOutput:Landroid/renderscript/Allocation;

    .line 49
    invoke-virtual {v0}, Landroid/renderscript/Allocation;->destroy()V

    .line 51
    iget-object p0, p0, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder$BlurBufferHolder;->mBlurred:Landroid/graphics/Bitmap;

    .line 54
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 56
    return-void

    .line 59
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 60
.end method
