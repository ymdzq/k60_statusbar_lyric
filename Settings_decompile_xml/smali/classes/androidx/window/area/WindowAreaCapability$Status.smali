.class public final Landroidx/window/area/WindowAreaCapability$Status;
.super Ljava/lang/Object;
.source "WindowAreaCapability.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/window/area/WindowAreaCapability;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/window/area/WindowAreaCapability$Status$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Landroidx/window/area/WindowAreaCapability$Status$Companion;

.field public static final WINDOW_AREA_STATUS_ACTIVE:Landroidx/window/area/WindowAreaCapability$Status;

.field public static final WINDOW_AREA_STATUS_AVAILABLE:Landroidx/window/area/WindowAreaCapability$Status;

.field public static final WINDOW_AREA_STATUS_UNAVAILABLE:Landroidx/window/area/WindowAreaCapability$Status;

.field public static final WINDOW_AREA_STATUS_UNSUPPORTED:Landroidx/window/area/WindowAreaCapability$Status;


# instance fields
.field private final description:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/window/area/WindowAreaCapability$Status$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/window/area/WindowAreaCapability$Status$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/window/area/WindowAreaCapability$Status;->Companion:Landroidx/window/area/WindowAreaCapability$Status$Companion;

    .line 43
    new-instance v0, Landroidx/window/area/WindowAreaCapability$Status;

    const-string v1, "UNSUPPORTED"

    invoke-direct {v0, v1}, Landroidx/window/area/WindowAreaCapability$Status;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroidx/window/area/WindowAreaCapability$Status;->WINDOW_AREA_STATUS_UNSUPPORTED:Landroidx/window/area/WindowAreaCapability$Status;

    .line 51
    new-instance v0, Landroidx/window/area/WindowAreaCapability$Status;

    const-string v1, "UNAVAILABLE"

    invoke-direct {v0, v1}, Landroidx/window/area/WindowAreaCapability$Status;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroidx/window/area/WindowAreaCapability$Status;->WINDOW_AREA_STATUS_UNAVAILABLE:Landroidx/window/area/WindowAreaCapability$Status;

    .line 57
    new-instance v0, Landroidx/window/area/WindowAreaCapability$Status;

    const-string v1, "AVAILABLE"

    invoke-direct {v0, v1}, Landroidx/window/area/WindowAreaCapability$Status;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroidx/window/area/WindowAreaCapability$Status;->WINDOW_AREA_STATUS_AVAILABLE:Landroidx/window/area/WindowAreaCapability$Status;

    .line 63
    new-instance v0, Landroidx/window/area/WindowAreaCapability$Status;

    const-string v1, "ACTIVE"

    invoke-direct {v0, v1}, Landroidx/window/area/WindowAreaCapability$Status;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroidx/window/area/WindowAreaCapability$Status;->WINDOW_AREA_STATUS_ACTIVE:Landroidx/window/area/WindowAreaCapability$Status;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/window/area/WindowAreaCapability$Status;->description:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 0

    .line 34
    iget-object p0, p0, Landroidx/window/area/WindowAreaCapability$Status;->description:Ljava/lang/String;

    return-object p0
.end method
