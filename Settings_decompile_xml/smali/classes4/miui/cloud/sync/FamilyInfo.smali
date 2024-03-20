.class public Lmiui/cloud/sync/FamilyInfo;
.super Ljava/lang/Object;
.source "FamilyInfo.java"


# static fields
.field public static final ROLE_NONE:Ljava/lang/String; = "None"

.field public static final ROLE_ORGANIZER:Ljava/lang/String; = "Organizer"

.field public static final ROLE_SHARER:Ljava/lang/String; = "Sharer"

.field public static final STATUS_NOT_ALLOW_SHARE:Ljava/lang/String; = "NotAllowShare"

.field public static final STATUS_NOT_SHARING:Ljava/lang/String; = "NotSharing"

.field public static final STATUS_SHARING:Ljava/lang/String; = "Sharing"


# instance fields
.field public final role:Ljava/lang/String;

.field public final status:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lmiui/cloud/sync/FamilyInfo;->role:Ljava/lang/String;

    .line 17
    iput-object p2, p0, Lmiui/cloud/sync/FamilyInfo;->status:Ljava/lang/String;

    return-void
.end method
