.class final Lcom/android/settings/MiuiTetherSettings$TetheringEventCallback;
.super Ljava/lang/Object;
.source "MiuiTetherSettings.java"

# interfaces
.implements Landroid/net/TetheringManager$TetheringEventCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/MiuiTetherSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "TetheringEventCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/MiuiTetherSettings;


# direct methods
.method private constructor <init>(Lcom/android/settings/MiuiTetherSettings;)V
    .locals 0

    .line 1682
    iput-object p1, p0, Lcom/android/settings/MiuiTetherSettings$TetheringEventCallback;->this$0:Lcom/android/settings/MiuiTetherSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/MiuiTetherSettings;Lcom/android/settings/MiuiTetherSettings$TetheringEventCallback-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/MiuiTetherSettings$TetheringEventCallback;-><init>(Lcom/android/settings/MiuiTetherSettings;)V

    return-void
.end method


# virtual methods
.method public onTetheredInterfacesChanged(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1685
    iget-object p1, p0, Lcom/android/settings/MiuiTetherSettings$TetheringEventCallback;->this$0:Lcom/android/settings/MiuiTetherSettings;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p0, "MiuiTetherSettings"

    const-string p1, "This activity may have been destroyed!!!"

    .line 1686
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1689
    :cond_0
    iget-object p1, p0, Lcom/android/settings/MiuiTetherSettings$TetheringEventCallback;->this$0:Lcom/android/settings/MiuiTetherSettings;

    invoke-static {p1}, Lcom/android/settings/MiuiTetherSettings;->-$$Nest$fgetmDelayHandler(Lcom/android/settings/MiuiTetherSettings;)Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/settings/MiuiTetherSettings$TetheringEventCallback;->this$0:Lcom/android/settings/MiuiTetherSettings;

    invoke-static {p1}, Lcom/android/settings/MiuiTetherSettings;->-$$Nest$fgetmDelayHandler(Lcom/android/settings/MiuiTetherSettings;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Handler;->hasMessagesOrCallbacks()Z

    move-result p1

    if-nez p1, :cond_2

    .line 1690
    :cond_1
    iget-object p0, p0, Lcom/android/settings/MiuiTetherSettings$TetheringEventCallback;->this$0:Lcom/android/settings/MiuiTetherSettings;

    invoke-static {p0}, Lcom/android/settings/MiuiTetherSettings;->-$$Nest$mupdateState(Lcom/android/settings/MiuiTetherSettings;)V

    :cond_2
    return-void
.end method
