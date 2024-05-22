.class public final synthetic Lcom/android/wm/shell/bubbles/BadgedImageView$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/bubbles/BadgedImageView;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/bubbles/BadgedImageView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/wm/shell/bubbles/BadgedImageView$$ExternalSyntheticLambda2;->f$0:Lcom/android/wm/shell/bubbles/BadgedImageView;

    .line 5
    return-void
    .line 7
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BadgedImageView$$ExternalSyntheticLambda2;->f$0:Lcom/android/wm/shell/bubbles/BadgedImageView;

    .line 2
    sget v0, Lcom/android/wm/shell/bubbles/BadgedImageView;->$r8$clinit:I

    .line 4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    .line 6
    const/high16 v0, 0x3f800000    # 1.0f

    .line 9
    const/4 v1, 0x0

    .line 11
    invoke-virtual {p0, v0, v1}, Lcom/android/wm/shell/bubbles/BadgedImageView;->animateDotScale(FLcom/android/wm/shell/bubbles/BadgedImageView$$ExternalSyntheticLambda2;)V

    .line 12
    return-void
    .line 15
.end method
