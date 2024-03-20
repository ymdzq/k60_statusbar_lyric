.class Lcom/android/settings/development/MiuiSetFullBackupPasswordFragment$4;
.super Ljava/lang/Object;
.source "MiuiSetFullBackupPasswordFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/development/MiuiSetFullBackupPasswordFragment;->saveNoPwStatus()V
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

    .line 206
    iput-object p1, p0, Lcom/android/settings/development/MiuiSetFullBackupPasswordFragment$4;->this$0:Lcom/android/settings/development/MiuiSetFullBackupPasswordFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 209
    iget-object p0, p0, Lcom/android/settings/development/MiuiSetFullBackupPasswordFragment$4;->this$0:Lcom/android/settings/development/MiuiSetFullBackupPasswordFragment;

    invoke-virtual {p0}, Lcom/android/settings/BaseFragment;->finish()V

    return-void
.end method
