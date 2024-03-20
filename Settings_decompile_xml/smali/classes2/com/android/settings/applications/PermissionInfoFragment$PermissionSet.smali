.class Lcom/android/settings/applications/PermissionInfoFragment$PermissionSet;
.super Ljava/lang/Object;
.source "PermissionInfoFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/PermissionInfoFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PermissionSet"
.end annotation


# instance fields
.field private nPermOther:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private nPermPrivacy:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private nPermSecurity:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$fgetnPermOther(Lcom/android/settings/applications/PermissionInfoFragment$PermissionSet;)Ljava/util/Map;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/applications/PermissionInfoFragment$PermissionSet;->nPermOther:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetnPermPrivacy(Lcom/android/settings/applications/PermissionInfoFragment$PermissionSet;)Ljava/util/Map;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/applications/PermissionInfoFragment$PermissionSet;->nPermPrivacy:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetnPermSecurity(Lcom/android/settings/applications/PermissionInfoFragment$PermissionSet;)Ljava/util/Map;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/applications/PermissionInfoFragment$PermissionSet;->nPermSecurity:Ljava/util/Map;

    return-object p0
.end method

.method constructor <init>()V
    .locals 1

    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 168
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/PermissionInfoFragment$PermissionSet;->nPermPrivacy:Ljava/util/Map;

    .line 169
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/PermissionInfoFragment$PermissionSet;->nPermSecurity:Ljava/util/Map;

    .line 170
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/PermissionInfoFragment$PermissionSet;->nPermOther:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public getOtherCount()I
    .locals 0

    .line 181
    iget-object p0, p0, Lcom/android/settings/applications/PermissionInfoFragment$PermissionSet;->nPermOther:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result p0

    return p0
.end method

.method public getPrivacyCount()I
    .locals 0

    .line 173
    iget-object p0, p0, Lcom/android/settings/applications/PermissionInfoFragment$PermissionSet;->nPermPrivacy:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result p0

    return p0
.end method

.method public getSecurityCount()I
    .locals 0

    .line 177
    iget-object p0, p0, Lcom/android/settings/applications/PermissionInfoFragment$PermissionSet;->nPermSecurity:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result p0

    return p0
.end method
