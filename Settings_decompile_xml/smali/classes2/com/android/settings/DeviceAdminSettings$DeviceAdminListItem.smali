.class Lcom/android/settings/DeviceAdminSettings$DeviceAdminListItem;
.super Ljava/lang/Object;
.source "DeviceAdminSettings.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/DeviceAdminSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DeviceAdminListItem"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/android/settings/DeviceAdminSettings$DeviceAdminListItem;",
        ">;"
    }
.end annotation


# instance fields
.field public active:Z

.field public info:Landroid/app/admin/DeviceAdminInfo;

.field public name:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/DeviceAdminSettings$DeviceAdminListItem-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/DeviceAdminSettings$DeviceAdminListItem;-><init>()V

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/android/settings/DeviceAdminSettings$DeviceAdminListItem;)I
    .locals 2

    .line 89
    iget-boolean v0, p0, Lcom/android/settings/DeviceAdminSettings$DeviceAdminListItem;->active:Z

    iget-boolean v1, p1, Lcom/android/settings/DeviceAdminSettings$DeviceAdminListItem;->active:Z

    if-eq v0, v1, :cond_1

    if-eqz v0, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    return p0

    .line 92
    :cond_1
    iget-object p0, p0, Lcom/android/settings/DeviceAdminSettings$DeviceAdminListItem;->name:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/settings/DeviceAdminSettings$DeviceAdminListItem;->name:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 79
    check-cast p1, Lcom/android/settings/DeviceAdminSettings$DeviceAdminListItem;

    invoke-virtual {p0, p1}, Lcom/android/settings/DeviceAdminSettings$DeviceAdminListItem;->compareTo(Lcom/android/settings/DeviceAdminSettings$DeviceAdminListItem;)I

    move-result p0

    return p0
.end method
