.class Lcom/android/settings/ConfirmAccessControl$ConfirmAccessControlFragment$1;
.super Ljava/lang/Object;
.source "ConfirmAccessControl.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/ConfirmAccessControl$ConfirmAccessControlFragment;->createView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/ConfirmAccessControl$ConfirmAccessControlFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/ConfirmAccessControl$ConfirmAccessControlFragment;)V
    .locals 0

    .line 110
    iput-object p1, p0, Lcom/android/settings/ConfirmAccessControl$ConfirmAccessControlFragment$1;->this$0:Lcom/android/settings/ConfirmAccessControl$ConfirmAccessControlFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 113
    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.android.phone.EmergencyDialer.DIAL"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v0, 0x10800000

    .line 114
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 116
    iget-object p0, p0, Lcom/android/settings/ConfirmAccessControl$ConfirmAccessControlFragment$1;->this$0:Lcom/android/settings/ConfirmAccessControl$ConfirmAccessControlFragment;

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
