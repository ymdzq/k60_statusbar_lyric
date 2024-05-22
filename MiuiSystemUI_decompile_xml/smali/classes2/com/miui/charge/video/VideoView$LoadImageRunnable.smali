.class public final Lcom/miui/charge/video/VideoView$LoadImageRunnable;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final mImageView:Landroid/widget/ImageView;

.field public final mResourceId:I


# direct methods
.method public constructor <init>(Landroid/widget/ImageView;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/miui/charge/video/VideoView$LoadImageRunnable;->mImageView:Landroid/widget/ImageView;

    .line 5
    iput p2, p0, Lcom/miui/charge/video/VideoView$LoadImageRunnable;->mResourceId:I

    .line 7
    return-void
    .line 9
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/miui/charge/video/VideoView$LoadImageRunnable;->mImageView:Landroid/widget/ImageView;

    .line 2
    invoke-virtual {v0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 7
    iget v1, p0, Lcom/miui/charge/video/VideoView$LoadImageRunnable;->mResourceId:I

    .line 8
    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 10
    move-result-object v0

    .line 13
    iget-object v1, p0, Lcom/miui/charge/video/VideoView$LoadImageRunnable;->mImageView:Landroid/widget/ImageView;

    .line 14
    new-instance v2, Lcom/miui/charge/video/VideoView$LoadImageRunnable$$ExternalSyntheticLambda0;

    .line 16
    const/4 v3, 0x0

    .line 18
    invoke-direct {v2, v3, p0, v0}, Lcom/miui/charge/video/VideoView$LoadImageRunnable$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 19
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    .line 22
    return-void
    .line 25
.end method
