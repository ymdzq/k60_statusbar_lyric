.class public final Lcom/android/systemui/controls/management/PanelConfirmationDialogFactory$createConfirmationDialog$1$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field public final synthetic $response:Ljava/util/function/Consumer;


# direct methods
.method public constructor <init>(Lcom/android/systemui/controls/management/ControlsProviderSelectorActivity$onAppSelected$1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/controls/management/PanelConfirmationDialogFactory$createConfirmationDialog$1$1;->$response:Ljava/util/function/Consumer;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/controls/management/PanelConfirmationDialogFactory$createConfirmationDialog$1$1;->$response:Ljava/util/function/Consumer;

    .line 2
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 4
    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 6
    return-void
    .line 9
.end method
