.class public Lcom/android/settings/display/PaperModeSunTimeHelper$SunTime;
.super Ljava/lang/Object;
.source "PaperModeSunTimeHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/display/PaperModeSunTimeHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SunTime"
.end annotation


# instance fields
.field private state:I

.field private sunrise:I

.field private sunset:I


# direct methods
.method public constructor <init>(III)V
    .locals 0

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 144
    iput p1, p0, Lcom/android/settings/display/PaperModeSunTimeHelper$SunTime;->sunrise:I

    .line 145
    iput p2, p0, Lcom/android/settings/display/PaperModeSunTimeHelper$SunTime;->sunset:I

    .line 146
    iput p3, p0, Lcom/android/settings/display/PaperModeSunTimeHelper$SunTime;->state:I

    return-void
.end method


# virtual methods
.method public getState()I
    .locals 0

    .line 166
    iget p0, p0, Lcom/android/settings/display/PaperModeSunTimeHelper$SunTime;->state:I

    return p0
.end method

.method public getSunrise()I
    .locals 0

    .line 150
    iget p0, p0, Lcom/android/settings/display/PaperModeSunTimeHelper$SunTime;->sunrise:I

    return p0
.end method

.method public getSunset()I
    .locals 0

    .line 158
    iget p0, p0, Lcom/android/settings/display/PaperModeSunTimeHelper$SunTime;->sunset:I

    return p0
.end method
