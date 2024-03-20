.class Lcom/android/settings/KeyDownloadDialog$1;
.super Ljava/lang/Object;
.source "KeyDownloadDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/KeyDownloadDialog;->show()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/KeyDownloadDialog;


# direct methods
.method constructor <init>(Lcom/android/settings/KeyDownloadDialog;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/android/settings/KeyDownloadDialog$1;->this$0:Lcom/android/settings/KeyDownloadDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 55
    iget-object p1, p0, Lcom/android/settings/KeyDownloadDialog$1;->this$0:Lcom/android/settings/KeyDownloadDialog;

    invoke-static {p1}, Lcom/android/settings/KeyDownloadDialog;->-$$Nest$fgetmListener(Lcom/android/settings/KeyDownloadDialog;)Lcom/android/settings/KeyDownloadDialog$IOnClickListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/settings/KeyDownloadDialog$1;->this$0:Lcom/android/settings/KeyDownloadDialog;

    invoke-static {p0}, Lcom/android/settings/KeyDownloadDialog;->-$$Nest$fgetmListener(Lcom/android/settings/KeyDownloadDialog;)Lcom/android/settings/KeyDownloadDialog$IOnClickListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/settings/KeyDownloadDialog$IOnClickListener;->onReTipBtnClick()V

    :cond_0
    return-void
.end method
