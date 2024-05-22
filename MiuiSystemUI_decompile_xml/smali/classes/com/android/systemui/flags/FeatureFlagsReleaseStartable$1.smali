.class public final Lcom/android/systemui/flags/FeatureFlagsReleaseStartable$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/Dumpable;


# instance fields
.field public final synthetic $featureFlags:Lcom/android/systemui/flags/FeatureFlags;


# direct methods
.method public constructor <init>(Lcom/android/systemui/flags/FeatureFlags;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/flags/FeatureFlagsReleaseStartable$1;->$featureFlags:Lcom/android/systemui/flags/FeatureFlags;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/flags/FeatureFlagsReleaseStartable$1;->$featureFlags:Lcom/android/systemui/flags/FeatureFlags;

    .line 2
    check-cast p0, Lcom/android/systemui/flags/FeatureFlagsRelease;

    .line 4
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/flags/FeatureFlagsRelease;->dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 6
    return-void
    .line 9
.end method
