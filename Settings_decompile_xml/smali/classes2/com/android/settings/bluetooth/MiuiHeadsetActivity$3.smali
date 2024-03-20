.class Lcom/android/settings/bluetooth/MiuiHeadsetActivity$3;
.super Ljava/lang/Object;
.source "MiuiHeadsetActivity.java"

# interfaces
.implements Landroid/view/View$OnApplyWindowInsetsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/bluetooth/MiuiHeadsetActivity;->onNavBarStyleChanged()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/MiuiHeadsetActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/MiuiHeadsetActivity;)V
    .locals 0

    .line 326
    iput-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetActivity$3;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 1

    .line 329
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetActivity$3;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/high16 v0, 0x8000000

    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    .line 330
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetActivity$3;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/Window;->setNavigationBarColor(I)V

    .line 331
    invoke-virtual {p2}, Landroid/view/WindowInsets;->consumeSystemWindowInsets()Landroid/view/WindowInsets;

    .line 332
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetActivity$3;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetActivity;

    invoke-static {p0}, Lcom/android/settings/bluetooth/MiuiHeadsetActivity;->-$$Nest$fgetmOuterView(Lcom/android/settings/bluetooth/MiuiHeadsetActivity;)Landroid/view/View;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    return-object p2
.end method
