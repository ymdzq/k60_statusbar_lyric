.class public final Lcom/android/systemui/controlcenter/policy/SlaveWifiHelper$showAlertDialog$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field public static final INSTANCE:Lcom/android/systemui/controlcenter/policy/SlaveWifiHelper$showAlertDialog$1;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/systemui/controlcenter/policy/SlaveWifiHelper$showAlertDialog$1;

    .line 2
    invoke-direct {v0}, Lcom/android/systemui/controlcenter/policy/SlaveWifiHelper$showAlertDialog$1;-><init>()V

    .line 4
    sput-object v0, Lcom/android/systemui/controlcenter/policy/SlaveWifiHelper$showAlertDialog$1;->INSTANCE:Lcom/android/systemui/controlcenter/policy/SlaveWifiHelper$showAlertDialog$1;

    .line 7
    return-void
    .line 9
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 2
    return-void
    .line 5
.end method
