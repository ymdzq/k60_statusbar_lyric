.class Lcom/android/settings/TetherDialogActivity$2;
.super Landroid/net/ConnectivityManager$OnStartTetheringCallback;
.source "TetherDialogActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/TetherDialogActivity;->startTethering(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/TetherDialogActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/TetherDialogActivity;)V
    .locals 0

    .line 143
    iput-object p1, p0, Lcom/android/settings/TetherDialogActivity$2;->this$0:Lcom/android/settings/TetherDialogActivity;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$OnStartTetheringCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onTetheringFailed()V
    .locals 0

    .line 0
    return-void
.end method

.method public onTetheringStarted()V
    .locals 0

    .line 0
    return-void
.end method
