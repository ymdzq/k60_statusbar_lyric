.class final Lcom/android/settings/MiuiTetherSettings$EthernetListener;
.super Ljava/lang/Object;
.source "MiuiTetherSettings.java"

# interfaces
.implements Landroid/net/EthernetManager$InterfaceStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/MiuiTetherSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "EthernetListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/MiuiTetherSettings;


# direct methods
.method private constructor <init>(Lcom/android/settings/MiuiTetherSettings;)V
    .locals 0

    .line 1695
    iput-object p1, p0, Lcom/android/settings/MiuiTetherSettings$EthernetListener;->this$0:Lcom/android/settings/MiuiTetherSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/MiuiTetherSettings;Lcom/android/settings/MiuiTetherSettings$EthernetListener-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/MiuiTetherSettings$EthernetListener;-><init>(Lcom/android/settings/MiuiTetherSettings;)V

    return-void
.end method


# virtual methods
.method public onInterfaceStateChanged(Ljava/lang/String;IILandroid/net/IpConfiguration;)V
    .locals 0

    .line 1698
    iget-object p3, p0, Lcom/android/settings/MiuiTetherSettings$EthernetListener;->this$0:Lcom/android/settings/MiuiTetherSettings;

    invoke-static {p3}, Lcom/android/settings/MiuiTetherSettings;->-$$Nest$fgetisClickUsb(Lcom/android/settings/MiuiTetherSettings;)Z

    move-result p3

    if-eqz p3, :cond_0

    return-void

    :cond_0
    const/4 p3, 0x2

    if-ne p2, p3, :cond_1

    .line 1702
    iget-object p2, p0, Lcom/android/settings/MiuiTetherSettings$EthernetListener;->this$0:Lcom/android/settings/MiuiTetherSettings;

    invoke-static {p2}, Lcom/android/settings/MiuiTetherSettings;->-$$Nest$fgetmAvailableInterfaces(Lcom/android/settings/MiuiTetherSettings;)Ljava/util/HashSet;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1704
    :cond_1
    iget-object p2, p0, Lcom/android/settings/MiuiTetherSettings$EthernetListener;->this$0:Lcom/android/settings/MiuiTetherSettings;

    invoke-static {p2}, Lcom/android/settings/MiuiTetherSettings;->-$$Nest$fgetmAvailableInterfaces(Lcom/android/settings/MiuiTetherSettings;)Ljava/util/HashSet;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 1706
    :goto_0
    iget-object p0, p0, Lcom/android/settings/MiuiTetherSettings$EthernetListener;->this$0:Lcom/android/settings/MiuiTetherSettings;

    invoke-static {p0}, Lcom/android/settings/MiuiTetherSettings;->-$$Nest$mupdateState(Lcom/android/settings/MiuiTetherSettings;)V

    return-void
.end method
