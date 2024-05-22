.class public final Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenView$7;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic this$0:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenView;

.field public final synthetic val$item:Lcom/miui/keyguard/biometrics/fod/item/IQuickOpenItem;


# direct methods
.method public constructor <init>(Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenView;Lcom/miui/keyguard/biometrics/fod/item/IQuickOpenItem;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenView$7;->this$0:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenView;

    .line 2
    iput-object p2, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenView$7;->val$item:Lcom/miui/keyguard/biometrics/fod/item/IQuickOpenItem;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenView$7;->this$0:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenView;

    .line 2
    iget-object v0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenView$7;->val$item:Lcom/miui/keyguard/biometrics/fod/item/IQuickOpenItem;

    .line 4
    sget v1, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenView;->$r8$clinit:I

    .line 6
    invoke-virtual {p1, v0}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenView;->handleQucikOpenItemTouchUp(Lcom/miui/keyguard/biometrics/fod/item/IQuickOpenItem;)V

    .line 8
    iget-object p0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenView$7;->this$0:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenView;

    .line 11
    invoke-virtual {p0}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenView;->dismiss()V

    .line 13
    return-void
    .line 16
.end method
