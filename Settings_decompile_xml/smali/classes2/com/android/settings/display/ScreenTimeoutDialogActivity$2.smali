.class Lcom/android/settings/display/ScreenTimeoutDialogActivity$2;
.super Ljava/lang/Object;
.source "ScreenTimeoutDialogActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/display/ScreenTimeoutDialogActivity;->createTimeOutDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/display/ScreenTimeoutDialogActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/display/ScreenTimeoutDialogActivity;)V
    .locals 0

    .line 102
    iput-object p1, p0, Lcom/android/settings/display/ScreenTimeoutDialogActivity$2;->this$0:Lcom/android/settings/display/ScreenTimeoutDialogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/android/settings/display/ScreenTimeoutDialogActivity$2;->this$0:Lcom/android/settings/display/ScreenTimeoutDialogActivity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method
