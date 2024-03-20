.class Lcom/android/settings/ConfirmSpacePasswordActivity$2;
.super Ljava/lang/Object;
.source "ConfirmSpacePasswordActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/ConfirmSpacePasswordActivity;->showDialogByRemoveSpace(Lmiuix/appcompat/app/AppCompatActivity;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Lmiuix/appcompat/app/AppCompatActivity;

.field final synthetic val$userIdToConfirmPassword:I


# direct methods
.method constructor <init>(ILmiuix/appcompat/app/AppCompatActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 94
    iput p1, p0, Lcom/android/settings/ConfirmSpacePasswordActivity$2;->val$userIdToConfirmPassword:I

    iput-object p2, p0, Lcom/android/settings/ConfirmSpacePasswordActivity$2;->val$activity:Lmiuix/appcompat/app/AppCompatActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 96
    new-instance p1, Landroid/content/Intent;

    const-string p2, "com.miui.securityspace.toRemoveAirSpace"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p2, "android.intent.extra.user_handle"

    .line 97
    iget v0, p0, Lcom/android/settings/ConfirmSpacePasswordActivity$2;->val$userIdToConfirmPassword:I

    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 98
    iget-object p2, p0, Lcom/android/settings/ConfirmSpacePasswordActivity$2;->val$activity:Lmiuix/appcompat/app/AppCompatActivity;

    const-string v0, "android.permission.MANAGE_USERS"

    invoke-virtual {p2, p1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 99
    iget-object p0, p0, Lcom/android/settings/ConfirmSpacePasswordActivity$2;->val$activity:Lmiuix/appcompat/app/AppCompatActivity;

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    return-void
.end method
