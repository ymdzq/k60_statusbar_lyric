.class public final Lcom/android/systemui/ForegroundServicesDialog$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/ForegroundServicesDialog;


# direct methods
.method public constructor <init>(Lcom/android/systemui/ForegroundServicesDialog;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/ForegroundServicesDialog$1;->this$0:Lcom/android/systemui/ForegroundServicesDialog;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/android/systemui/ForegroundServicesDialog$1;->this$0:Lcom/android/systemui/ForegroundServicesDialog;

    .line 2
    iget-object p1, p1, Lcom/android/systemui/ForegroundServicesDialog;->mAdapter:Lcom/android/systemui/ForegroundServicesDialog$PackageItemAdapter;

    .line 4
    invoke-virtual {p1, p2}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    .line 6
    move-result-object p1

    .line 9
    check-cast p1, Landroid/content/pm/ApplicationInfo;

    .line 10
    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 12
    new-instance p2, Landroid/content/Intent;

    .line 14
    const-string v0, "android.settings.APPLICATION_DETAILS_SETTINGS"

    .line 16
    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 18
    const-string v0, "package"

    .line 21
    const/4 v1, 0x0

    .line 23
    invoke-static {v0, p1, v1}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    .line 24
    move-result-object p1

    .line 27
    invoke-virtual {p2, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 28
    iget-object p1, p0, Lcom/android/systemui/ForegroundServicesDialog$1;->this$0:Lcom/android/systemui/ForegroundServicesDialog;

    .line 31
    invoke-virtual {p1, p2}, Lcom/android/internal/app/AlertActivity;->startActivity(Landroid/content/Intent;)V

    .line 33
    iget-object p0, p0, Lcom/android/systemui/ForegroundServicesDialog$1;->this$0:Lcom/android/systemui/ForegroundServicesDialog;

    .line 36
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->finish()V

    .line 38
    return-void
    .line 41
.end method
