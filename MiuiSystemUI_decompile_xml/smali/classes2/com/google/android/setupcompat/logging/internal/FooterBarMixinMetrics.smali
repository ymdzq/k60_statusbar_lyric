.class public final Lcom/google/android/setupcompat/logging/internal/FooterBarMixinMetrics;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static final EXTRA_PRIMARY_BUTTON_VISIBILITY:Ljava/lang/String; = "PrimaryButtonVisibility"

.field public static final EXTRA_SECONDARY_BUTTON_VISIBILITY:Ljava/lang/String; = "SecondaryButtonVisibility"


# instance fields
.field public primaryButtonVisibility:Ljava/lang/String;

.field public secondaryButtonVisibility:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const-string v0, "Unknown"

    .line 5
    iput-object v0, p0, Lcom/google/android/setupcompat/logging/internal/FooterBarMixinMetrics;->primaryButtonVisibility:Ljava/lang/String;

    .line 7
    iput-object v0, p0, Lcom/google/android/setupcompat/logging/internal/FooterBarMixinMetrics;->secondaryButtonVisibility:Ljava/lang/String;

    .line 9
    return-void
    .line 11
.end method

.method public static updateButtonVisibilityState(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 4

    .line 1
    const-string v0, "VisibleUsingXml"

    .line 2
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4
    move-result v1

    .line 7
    const-string v2, "Invisible"

    .line 8
    const-string v3, "Visible"

    .line 10
    if-nez v1, :cond_1

    .line 12
    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 14
    move-result v1

    .line 17
    if-nez v1, :cond_1

    .line 18
    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 20
    move-result v1

    .line 23
    if-eqz v1, :cond_0

    .line 24
    goto :goto_0

    .line 26
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 27
    const-string v0, "Illegal visibility state: "

    .line 29
    invoke-static {v0, p0}, Landroidx/constraintlayout/motion/widget/KeyAttributes$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 31
    move-result-object p0

    .line 34
    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 35
    throw p1

    .line 38
    :cond_1
    :goto_0
    if-eqz p1, :cond_2

    .line 39
    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 41
    move-result v1

    .line 44
    if-eqz v1, :cond_2

    .line 45
    const-string p0, "Invisible_to_Visible"

    .line 47
    return-object p0

    .line 49
    :cond_2
    if-nez p1, :cond_4

    .line 50
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 52
    move-result p1

    .line 55
    if-eqz p1, :cond_3

    .line 56
    const-string p0, "VisibleUsingXml_to_Invisible"

    .line 58
    return-object p0

    .line 60
    :cond_3
    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 61
    move-result p1

    .line 64
    if-eqz p1, :cond_4

    .line 65
    const-string p0, "Visible_to_Invisible"

    .line 67
    :cond_4
    return-object p0
    .line 69
.end method
