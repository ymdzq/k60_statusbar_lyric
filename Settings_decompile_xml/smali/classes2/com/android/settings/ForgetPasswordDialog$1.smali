.class Lcom/android/settings/ForgetPasswordDialog$1;
.super Ljava/lang/Object;
.source "ForgetPasswordDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/ForgetPasswordDialog;->initCustomTitle()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/ForgetPasswordDialog;


# direct methods
.method constructor <init>(Lcom/android/settings/ForgetPasswordDialog;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/android/settings/ForgetPasswordDialog$1;->this$0:Lcom/android/settings/ForgetPasswordDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/android/settings/ForgetPasswordDialog$1;->this$0:Lcom/android/settings/ForgetPasswordDialog;

    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    return-void
.end method
