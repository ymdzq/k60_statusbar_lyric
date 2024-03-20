.class public final Lcom/android/keyguard/analytics/AnalyticsHelper$TrackPageEvent;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final mEndLevel:J

.field public final mMaxValue:J

.field public final mPageName:Ljava/lang/String;

.field public final mStartLevel:J

.field public mStartTime:J

.field public final mStep:J

.field public mTrackStarted:Z

.field public final synthetic this$0:Lcom/android/keyguard/analytics/AnalyticsHelper;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/analytics/AnalyticsHelper;Ljava/lang/String;JJJJ)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/keyguard/analytics/AnalyticsHelper$TrackPageEvent;->this$0:Lcom/android/keyguard/analytics/AnalyticsHelper;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p2, p0, Lcom/android/keyguard/analytics/AnalyticsHelper$TrackPageEvent;->mPageName:Ljava/lang/String;

    .line 7
    iput-wide p3, p0, Lcom/android/keyguard/analytics/AnalyticsHelper$TrackPageEvent;->mStartLevel:J

    .line 9
    iput-wide p5, p0, Lcom/android/keyguard/analytics/AnalyticsHelper$TrackPageEvent;->mEndLevel:J

    .line 11
    iput-wide p7, p0, Lcom/android/keyguard/analytics/AnalyticsHelper$TrackPageEvent;->mStep:J

    .line 13
    iput-wide p9, p0, Lcom/android/keyguard/analytics/AnalyticsHelper$TrackPageEvent;->mMaxValue:J

    .line 15
    return-void
    .line 17
.end method
