.class public abstract Lcom/miui/analytics/MiuiSoScTrackImpl$Provider$SINGLETON;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static final INSTANCE:Lcom/miui/analytics/MiuiSoScTrackImpl;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/miui/analytics/MiuiSoScTrackImpl;

    .line 2
    invoke-direct {v0}, Lcom/miui/analytics/MiuiSoScTrackImpl;-><init>()V

    .line 4
    sput-object v0, Lcom/miui/analytics/MiuiSoScTrackImpl$Provider$SINGLETON;->INSTANCE:Lcom/miui/analytics/MiuiSoScTrackImpl;

    .line 7
    return-void
    .line 9
.end method
