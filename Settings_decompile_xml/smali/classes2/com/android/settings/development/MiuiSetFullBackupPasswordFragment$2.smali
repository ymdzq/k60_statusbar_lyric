.class Lcom/android/settings/development/MiuiSetFullBackupPasswordFragment$2;
.super Ljava/lang/Object;
.source "MiuiSetFullBackupPasswordFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/development/MiuiSetFullBackupPasswordFragment;->updateViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/development/MiuiSetFullBackupPasswordFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/development/MiuiSetFullBackupPasswordFragment;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/android/settings/development/MiuiSetFullBackupPasswordFragment$2;->this$0:Lcom/android/settings/development/MiuiSetFullBackupPasswordFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 102
    iget-object p0, p0, Lcom/android/settings/development/MiuiSetFullBackupPasswordFragment$2;->this$0:Lcom/android/settings/development/MiuiSetFullBackupPasswordFragment;

    const/4 p1, 0x3

    iput p1, p0, Lcom/android/settings/development/MiuiSetFullBackupPasswordFragment;->mCurrestStatus:I

    .line 103
    invoke-static {p0}, Lcom/android/settings/development/MiuiSetFullBackupPasswordFragment;->-$$Nest$mupdateViews(Lcom/android/settings/development/MiuiSetFullBackupPasswordFragment;)V

    return-void
.end method
