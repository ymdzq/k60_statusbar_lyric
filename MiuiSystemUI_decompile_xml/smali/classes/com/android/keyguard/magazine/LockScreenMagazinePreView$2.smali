.class public final Lcom/android/keyguard/magazine/LockScreenMagazinePreView$2;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/magazine/LockScreenMagazinePreView;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/magazine/LockScreenMagazinePreView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView$2;->this$0:Lcom/android/keyguard/magazine/LockScreenMagazinePreView;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 1
    sub-int/2addr p4, p2

    .line 2
    sub-int/2addr p8, p6

    .line 3
    if-eq p4, p8, :cond_0

    .line 4
    iget-object p1, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView$2;->this$0:Lcom/android/keyguard/magazine/LockScreenMagazinePreView;

    .line 6
    iget-object p2, p1, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mFullScreenTitleLayout:Landroid/widget/RelativeLayout;

    .line 8
    invoke-virtual {p2}, Landroid/widget/RelativeLayout;->getWidth()I

    .line 10
    move-result p2

    .line 13
    int-to-float p2, p2

    .line 14
    iput p2, p1, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mFullScreenTitleLayoutWidth:F

    .line 15
    iget-object p0, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView$2;->this$0:Lcom/android/keyguard/magazine/LockScreenMagazinePreView;

    .line 17
    invoke-virtual {p0}, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->updateLinkButton()V

    .line 19
    :cond_0
    return-void
    .line 22
.end method
