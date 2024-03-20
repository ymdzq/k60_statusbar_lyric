.class public Lcom/android/settings/KeyguardPasswordSlidingGuideBean;
.super Ljava/lang/Object;
.source "KeyguardPasswordSlidingGuideBean.java"


# instance fields
.field private animationName:Ljava/lang/String;

.field private context:Ljava/lang/String;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/android/settings/KeyguardPasswordSlidingGuideBean;->title:Ljava/lang/String;

    .line 11
    iput-object p2, p0, Lcom/android/settings/KeyguardPasswordSlidingGuideBean;->context:Ljava/lang/String;

    .line 12
    iput-object p3, p0, Lcom/android/settings/KeyguardPasswordSlidingGuideBean;->animationName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAnimationName()Ljava/lang/String;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/android/settings/KeyguardPasswordSlidingGuideBean;->animationName:Ljava/lang/String;

    return-object p0
.end method

.method public getContext()Ljava/lang/String;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/android/settings/KeyguardPasswordSlidingGuideBean;->context:Ljava/lang/String;

    return-object p0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/android/settings/KeyguardPasswordSlidingGuideBean;->title:Ljava/lang/String;

    return-object p0
.end method
