.class Lcom/android/settings/ConfirmSpacePasswordActivity$1;
.super Ljava/lang/Object;
.source "ConfirmSpacePasswordActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/ConfirmSpacePasswordActivity;->initActionBar(Lmiuix/appcompat/app/AppCompatActivity;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Lmiuix/appcompat/app/AppCompatActivity;

.field final synthetic val$userIdToConfirmPassword:I


# direct methods
.method constructor <init>(Lmiuix/appcompat/app/AppCompatActivity;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 75
    iput-object p1, p0, Lcom/android/settings/ConfirmSpacePasswordActivity$1;->val$activity:Lmiuix/appcompat/app/AppCompatActivity;

    iput p2, p0, Lcom/android/settings/ConfirmSpacePasswordActivity$1;->val$userIdToConfirmPassword:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 77
    iget-object p1, p0, Lcom/android/settings/ConfirmSpacePasswordActivity$1;->val$activity:Lmiuix/appcompat/app/AppCompatActivity;

    iget p0, p0, Lcom/android/settings/ConfirmSpacePasswordActivity$1;->val$userIdToConfirmPassword:I

    invoke-static {p1, p0}, Lcom/android/settings/ConfirmSpacePasswordActivity;->-$$Nest$smshowDialogByRemoveSpace(Lmiuix/appcompat/app/AppCompatActivity;I)V

    return-void
.end method
