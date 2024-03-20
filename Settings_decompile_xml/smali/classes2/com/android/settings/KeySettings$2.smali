.class Lcom/android/settings/KeySettings$2;
.super Ljava/lang/Object;
.source "KeySettings.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/KeySettings;->addPowerGuide()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/KeySettings;

.field final synthetic val$hintView:Landroid/view/View;

.field final synthetic val$wm:Landroid/view/WindowManager;


# direct methods
.method constructor <init>(Lcom/android/settings/KeySettings;Landroid/view/WindowManager;Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 440
    iput-object p1, p0, Lcom/android/settings/KeySettings$2;->this$0:Lcom/android/settings/KeySettings;

    iput-object p2, p0, Lcom/android/settings/KeySettings$2;->val$wm:Landroid/view/WindowManager;

    iput-object p3, p0, Lcom/android/settings/KeySettings$2;->val$hintView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 443
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    const/4 p2, 0x4

    if-ne p1, p2, :cond_0

    .line 444
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    .line 445
    iget-object p1, p0, Lcom/android/settings/KeySettings$2;->val$wm:Landroid/view/WindowManager;

    iget-object p0, p0, Lcom/android/settings/KeySettings$2;->val$hintView:Landroid/view/View;

    invoke-interface {p1, p0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    return p2

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
