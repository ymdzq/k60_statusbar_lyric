.class Lcom/android/settings/privacy/PrivacyRevocationSettings$4;
.super Ljava/lang/Object;
.source "PrivacyRevocationSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/privacy/PrivacyRevocationSettings;->showRevokeDialog(Landroid/content/Context;Ljava/lang/String;Lcom/android/settings/privacy/PrivacyItem;)Lmiuix/appcompat/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/privacy/PrivacyRevocationSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/privacy/PrivacyRevocationSettings;)V
    .locals 0

    .line 324
    iput-object p1, p0, Lcom/android/settings/privacy/PrivacyRevocationSettings$4;->this$0:Lcom/android/settings/privacy/PrivacyRevocationSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 328
    :try_start_0
    iget-object p0, p0, Lcom/android/settings/privacy/PrivacyRevocationSettings$4;->this$0:Lcom/android/settings/privacy/PrivacyRevocationSettings;

    invoke-static {p0}, Lcom/android/settings/privacy/PrivacyRevocationSettings;->-$$Nest$fgetmAdapter(Lcom/android/settings/privacy/PrivacyRevocationSettings;)Lcom/android/settings/privacy/PrivacyRevocationAdapter;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 329
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "PrivacyRevocationSettings"

    const-string p2, "MiuiSettings privacy modify status:"

    .line 331
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
